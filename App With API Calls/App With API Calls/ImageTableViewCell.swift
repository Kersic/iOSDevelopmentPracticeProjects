//
//  ImageTableViewCell.swift
//  App With API Calls
//
//  Created by Tadeja Keršič on 20/10/2020.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageContainer: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
