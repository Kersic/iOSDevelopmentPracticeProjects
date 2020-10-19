//
//  EntryViewController.swift
//  Daily Journal
//
//  Created by Tadeja Keršič on 19/10/2020.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!    
    @IBOutlet weak var entryTextView: UITextView!
    
    var entriesVC: EntriesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let entry = Entry()
        entry.date = datePicker.date
        entry.text = entryTextView.text
        
        entriesVC?.entries.append(entry)
        entriesVC?.tableView.reloadData()
    }
}
