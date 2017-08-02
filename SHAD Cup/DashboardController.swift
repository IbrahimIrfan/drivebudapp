//
//  DashboardController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-17.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class DashboardController: UIViewController, UITableViewDataSource {
    private var data: [CellData] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var circleView: CircleGraphView!
    @IBOutlet weak var graphLabel1: UILabel!
    
    @IBOutlet weak var circleView2: CircleGraphView!
    @IBOutlet weak var graphLabel2: UILabel!
    
    @IBOutlet weak var circleView3: CircleGraphView!
    @IBOutlet weak var graphLabel3: UILabel!
    
    
    @IBOutlet weak var graphDesc1: UILabel!
    @IBOutlet weak var graphDesc2: UILabel!
    @IBOutlet weak var graphDesc3: UILabel!
    
    @IBOutlet weak var phantomButton: UIButton!
    @IBOutlet weak var phantomButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        
        let data1 = CellData(desc: "$68.54 saved", icon: "MoneyIcon", pos: "Nah")
        data.append(data1)
        let data2 = CellData(desc: "2.6L of gas saved", icon: "GasIcon", pos: "Nah")
        data.append(data2)
        let data3 = CellData(desc: "12% less CO2 emissions", icon: "CO2Icon", pos: "Nah")
        data.append(data3)
        let data4 = CellData(desc: "1 tree planted", icon: "TreeIcon", pos: "Nah")
        data.append(data4)
        
        graphLabel1.text = "22min"
        circleView.endArc = 0.75
        graphDesc1.text = "Idling time"
        
        graphLabel2.text = "25%"
        circleView2.endArc = 0.25
        graphDesc2.text = "Braking harshness"
        
        graphLabel3.text = "33%"
        circleView3.endArc = 0.33
        graphDesc3.text = "Fuel efficiency"
        
        phantomButton.layer.cornerRadius = 15
        phantomButton2.layer.cornerRadius = 15
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footprintCell") as! FootprintCells
        
        let text = data[indexPath.row].desc
        let iconName = data[indexPath.row].icon
        
        cell.label.text = text
        cell.icon.image = UIImage(named: iconName!)
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




