//
//  SocialController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-21.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//
import UIKit

class SocialController: UIViewController, UITableViewDataSource {
    
    private var data: [CellData] = []
    private var data2: [CellData] = []
    private var data3: [CellData] = []
    
    @IBOutlet weak var tableView: UITableView!
   
    @IBOutlet weak var tableView2: UITableView!
    
    @IBOutlet weak var tableView3: UITableView!
    
    @IBOutlet weak var phantomButton: UIButton!
    
    @IBOutlet weak var phantomButton2: UIButton!
    
    @IBOutlet weak var phantomButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        
        phantomButton.layer.cornerRadius = 15
        phantomButton2.layer.cornerRadius = 15
        phantomButton3.layer.cornerRadius = 15
        
        tableView.dataSource = self
        tableView2.dataSource = self
        tableView3.dataSource = self

        data.append(CellData(desc: "John Smith", icon: "Person1", pos: "432m"))
        data.append(CellData(desc: "Mary Chen", icon: "Person2", pos: "502m"))
        data.append(CellData(desc: "Mike Jones", icon: "Person3", pos: "674m"))
        data.append(CellData(desc: "Elon Musk", icon: "Person4", pos: "895m"))
        
        
        data2.append(CellData(desc: "Mary planted a new tree", icon: "Person2", pos: "Nope"))
        data2.append(CellData(desc: "Mike saved $49.85 this week", icon: "Person3", pos: "Nope"))
        data2.append(CellData(desc: "Elon saved 2.5% CO2 emissions this week", icon: "Person4", pos: "895m"))
        
        
        data3.append(CellData(desc: "Lowest Footprint Contest", icon: "Silver", pos: "432m"))
        data3.append(CellData(desc: "Highest Trees Planted Contest", icon: "Bronze", pos: "502m"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count:Int?
        
        if tableView == self.tableView {
            count = data.count
        }
        
        if tableView == self.tableView2 {
            count =  data2.count
        }
        
        if tableView == self.tableView3 {
            count =  data3.count
        }
        
        return count!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: LeaderboardCells!
        
        if tableView == self.tableView {
            cell = tableView.dequeueReusableCell(withIdentifier: "leaderboardCell") as! LeaderboardCells
            
            let text = data[indexPath.row].desc
            let iconName = data[indexPath.row].icon
            let posText = data[indexPath.row].pos
            
            cell.label.text = text
            cell.icon.image = UIImage(named: iconName!)
            cell.posLabel.text = posText
            
        }
        
        if tableView == self.tableView2 {
            cell = tableView2.dequeueReusableCell(withIdentifier: "activityCell") as! LeaderboardCells
            
            let text = data2[indexPath.row].desc
            let iconName = data2[indexPath.row].icon
            cell.label2.text = text
            cell.icon2.image = UIImage(named: iconName!)
            
        }
        
        if tableView == self.tableView3 {
            cell = tableView3.dequeueReusableCell(withIdentifier: "contestCell") as! LeaderboardCells
            
            let text = data3[indexPath.row].desc
            let iconName = data3[indexPath.row].icon
            cell.label3.text = text
            cell.icon3.image = UIImage(named: iconName!)
            
        }
        
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
