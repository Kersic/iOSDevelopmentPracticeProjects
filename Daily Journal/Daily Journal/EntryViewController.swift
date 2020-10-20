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
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if entry == nil {
            
        } else {
            entryTextView.text = entry!.text
            if let dateToBeShown = entry!.date {
                datePicker.date = dateToBeShown
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if entry == nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                let entry = Entry(context: context)
                entry.date = datePicker.date
                entry.text = entryTextView.text
                (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            }
        }
    }
    
    @IBAction func deleteEntry(_ sender: Any) {
        if entry != nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                context.delete(entry!)
                try? context.save()
            }
        }
        
        navigationController?.popViewController(animated: true)
    }
}
