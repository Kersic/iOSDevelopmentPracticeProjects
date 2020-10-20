//
//  EntryViewController.swift
//  Daily Journal
//
//  Created by Tadeja Keršič on 19/10/2020.
//

import UIKit

class EntryViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var datePicker: UIDatePicker!    
    @IBOutlet weak var entryTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if entry == nil {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                entry = Entry(context: context)
                entry?.date = datePicker.date
                entry?.text = entryTextView.text
               
            }
        }
        
        entryTextView.text = entry?.text
        if let dateToBeShown = entry?.date {
            datePicker.date = dateToBeShown
        }
        
        entryTextView.delegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
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
    
    func textViewDidChange(_ textView: UITextView) {
        entry?.text = entryTextView.text
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    
    @IBAction func datePickerChanged(_ sender: Any) {
        entry?.date = datePicker.date
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    
}
