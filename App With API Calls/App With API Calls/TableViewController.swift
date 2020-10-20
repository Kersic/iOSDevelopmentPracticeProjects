//
//  TableViewController.swift
//  App With API Calls
//
//  Created by Tadeja Keršič on 20/10/2020.
//

import UIKit

class TableViewController: UITableViewController {
    
    var images: [Image] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        getToDos()
    }
    
    func getToDos() {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/photos?_start=0&_limit=20") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) {(data, response, error) in
                if error != nil {
                    print("There was an error")
                } else if (data != nil) {
                    if let imagesFromApi = try? JSONDecoder().decode([Image].self, from: data!) {
                        DispatchQueue.main.async {
                            self.images = imagesFromApi
                            self.tableView.reloadData()
                        }
                    }
                }
            }.resume()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath)
        
        let image = images[indexPath.row]
        cell.textLabel?.text = image.title
        
        return cell
    }

}
