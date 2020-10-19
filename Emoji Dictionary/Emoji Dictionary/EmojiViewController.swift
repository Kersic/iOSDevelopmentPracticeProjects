//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Tadeja Keršič on 19/10/2020.
//

import UIKit

class EmojiViewController: UIViewController {

    @IBOutlet weak var EmojiIcon: UILabel!
    @IBOutlet weak var EmojiDescription: UILabel!
    
    var emoji: Emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        EmojiIcon.text = emoji.character
        EmojiDescription.text = emoji.description
    
    }
      

}
