//
//  LeaderboardCells.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-21.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class LeaderboardCells: UITableViewCell {
    
    //todo: label and circular icon
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var posLabel: UILabel!
    
    @IBOutlet weak var icon3: UIImageView!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var icon2: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

