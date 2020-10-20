//
//  TableViewController.swift
//  App With API Calls
//
//  Created by Tadeja Keršič on 20/10/2020.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getToDos()
    }
    
    func getToDos() {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/todos") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) {(data, response, error) in
                if error != nil {
                    print("There was an error")
                } else if (data != nil) {
                    print(String(data: data!, encoding: .utf8))
                }
            }.resume()
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
