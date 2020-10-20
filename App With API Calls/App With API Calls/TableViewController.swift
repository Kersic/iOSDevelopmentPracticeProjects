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
        getImages()
    }
    
    func getImages() {
        if let url = URL(string: "https://picsum.photos/v2/list?page=2&limit=100") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) {(data, response, error) in
                if error != nil {
                } else if (data != nil) {
                   // print(String(data:data!, encoding: .utf8))
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
        
       // let image = images[indexPath.row]
       // cell.textLabel?.text = image.author
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 330
    }

    @IBAction func reloadImages(_ sender: Any) {
        getImages()
    }
}
