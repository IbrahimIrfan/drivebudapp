//
//  InstructionsController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-17.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class InstructionsController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var phantomButton: UIButton!
    
    @IBOutlet weak var switchThing: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        
        phantomButton.layer.cornerRadius = 15
        loginButton.layer.cornerRadius = 15
        switchThing.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        //segue
        performSegue(withIdentifier: "toTabController", sender: sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

