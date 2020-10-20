//
//  Todo.swift
//  App With API Calls
//
//  Created by Tadeja Keršič on 20/10/2020.
//

import Foundation

class Image: Codable {
    var id = 0
    var album = 0
    var title = ""
    var imageUrl = ""
    var thumbnailUrl = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case album = "albumId"
        case title
        case imageUrl = "url"
        case thumbnailUrl
    }
}
