//
//  MainTableViewCell.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 30/05/23.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    


    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var textDetailDate: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
