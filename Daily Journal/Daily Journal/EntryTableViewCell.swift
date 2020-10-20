//
//  EntryTableViewCell.swift
//  Daily Journal
//
//  Created by Tadeja Keršič on 20/10/2020.
//

import UIKit

class EntryTableViewCell: UITableViewCell {

    @IBOutlet weak var entryTextLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
