//
//  CellTableViewCell.swift
//  CurrencyConverter(15 Nov)
//
//  Created by Devesh Verma on 2019-11-15.
//  Copyright © 2019 Devesh Verma. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var lable: UILabel!
    
    
        override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
