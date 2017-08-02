//
//  TripsCell.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-23.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class TripsCell: UITableViewCell {
    
// labels
    
    @IBOutlet weak var kmLabel: UILabel!
    
    @IBOutlet weak var tripLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

