//
//  Todo.swift
//  App With API Calls
//
//  Created by Tadeja Keršič on 20/10/2020.
//

import Foundation

class Image: Codable {
    var id = ""
    var author = ""
    var url = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case author
        case url
    }
}
