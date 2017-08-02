//
//  RealInstrController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-22.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//


import UIKit

class RealInstrController: UIViewController {
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var phantomButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        
        nextButton.layer.cornerRadius = 15
        phantomButton.layer.cornerRadius = 15

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        performSegue(withIdentifier: "toLogin", sender: sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


