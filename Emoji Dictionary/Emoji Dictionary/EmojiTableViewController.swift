//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Tadeja Keršič on 15/10/2020.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    let emojis = ["😃", "🤪", "🤬", "🧐", "😱", "😎", "🙃", "🤩", "🤯", "😇", "😍", "🥺", "🤗", "🥶", "😬", "😵", "🤠", "🤐", "🤥", "😷", "🤒", "🥳", "😉", "😝", "😴"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //how many rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return emojis.count
    }

    //what gows in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = "\(emojis[indexPath.row]) \(emojis[indexPath.row].unicodeScalars.first!.properties.name!.capitalized)"

        return cell
    }
    
    //when someone tap on row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectdEmoji = emojis[indexPath.row]
        performSegue(withIdentifier: "Emoji", sender: selectdEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVC = segue.destination as! EmojiViewController
        let selectdEmoji = sender as! String
        definitionVC.emoji = selectdEmoji
    }

}
