//
//  IntroScreenController.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-17.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class IntroScreenController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var welcomeButton: UIButton!
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.view.backgroundColor = UIColor.green
        print("loaded")
        welcomeButton.layer.cornerRadius = 15
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        //segue
        performSegue(withIdentifier: "toInstructions", sender: sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

