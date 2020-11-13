//
//  TableCell.swift
//  JWT
//
//  Created by Sefa Çelik on 13.11.2020.
//

import UIKit

class TableCell: UITableViewCell{
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var summareyLabel: UILabel!
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
