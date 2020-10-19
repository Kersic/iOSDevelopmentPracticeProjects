//
//  ViewController.swift
//  Currency Converter
//
//  Created by Tadeja Keršič on 15/10/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CovertedLabel: UILabel!
    @IBOutlet weak var ConversionRateInput: UITextField!
    @IBOutlet weak var AmountInput: UITextField!
    @IBOutlet weak var CurrencyToggele: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CovertedLabel.text = ""
    }

    @IBAction func ConvertButton(_ sender: Any) {
        let rate = Double(ConversionRateInput.text!)!
        let amount = Double(AmountInput.text!)!
        
        let converted = rate * amount
        
        if CurrencyToggele.selectedSegmentIndex == 0 {
            CovertedLabel.text = "$\(converted)"
        } else {
            CovertedLabel.text = "￥\(converted)"
        }
        
        
        print(converted)
    }
    
}

