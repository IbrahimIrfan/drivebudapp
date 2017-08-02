//
//  EnergyController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-17.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class GoalsController: UIViewController {
    
    @IBOutlet weak var phantomButton: UIButton!
    
    @IBOutlet weak var phantomButton2: UIButton!
    
    @IBOutlet weak var circleView: CircleGraphView!
    @IBOutlet weak var graphLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("goals");
        
        phantomButton.layer.cornerRadius = 15
           phantomButton2.layer.cornerRadius = 15
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        
        
        circleView.endArc = 0.56
        graphLabel.text = "56%"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
