//
//  TableViewCell.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 29/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imagePet: UIImageView!
    @IBOutlet  var textTimeStopWatch: UILabel!
    @IBOutlet  var textTime: UILabel!
    @IBOutlet  var textDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
}
