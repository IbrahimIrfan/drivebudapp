//
//  HistoryController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-22.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class HistoryController: UIViewController, UITableViewDataSource {
    
    private var data: [CellData] = []
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var buttonPhantom: UIButton!
    @IBOutlet weak var buttonPhantom2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        
        buttonPhantom.layer.cornerRadius = 15
         buttonPhantom2.layer.cornerRadius = 15
        tableView.dataSource = self
        
        data.append(CellData(desc: "11.4km", icon: "Today 3:32pm - 4:18pm", pos: "432m"))
        
        data.append(CellData(desc: "14.1km", icon: "Today 7:32am - 7:48am", pos: "432m"))
        
        data.append(CellData(desc: "8.6km", icon: "Yesterday 8:19pm - 8:41pm", pos: "432m"))
        
        data.append(CellData(desc: "3.6km", icon: "Yesterday 12:09pm - 12:18pm", pos: "432m"))

        data.append(CellData(desc: "5.2km", icon: "Yesterday 7:29am - 7:46am", pos: "432m"))
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tripsCell") as! TripsCell
        
        let text = data[indexPath.row].desc
        let iconName = data[indexPath.row].icon
        
        cell.kmLabel.text = text
        cell.tripLabel.text = iconName
        
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

