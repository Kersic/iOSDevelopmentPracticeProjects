//
//  ViewController.swift
//  My first iOS app
//
//  Created by Tadeja Keršič on 15/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        centerLabel.textColor = .white
        centerLabel.text = "Click counter"
        countLabel.textColor = .white
    }
    
    
    @IBAction func ButtonTapped(_ sender: Any) {
        count += 1;
        countLabel.text = String(count)
        if(count % 10 != 0) {
            view.backgroundColor = .black
            centerLabel.textColor = .white
            centerLabel.text = "Click counter"
            countLabel.textColor = .white
        } else {
            view.backgroundColor = .white
            centerLabel.textColor = .black
            centerLabel.text = "Hello there"
            countLabel.textColor = .black
        }
    }
}

