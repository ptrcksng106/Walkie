//
//  TableViewCell.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 29/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imagePet: UIImageView!
    @IBOutlet weak var textTimeStopWatch: UILabel!
    @IBOutlet weak var textTime: UILabel!
    @IBOutlet weak var textDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
}
