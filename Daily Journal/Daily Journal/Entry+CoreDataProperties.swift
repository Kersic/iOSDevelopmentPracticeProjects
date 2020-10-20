//
//  Entry+CoreDataProperties.swift
//  Daily Journal
//
//  Created by Tadeja Keršič on 19/10/2020.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var text: String?
    @NSManaged public var date: Date?

}

extension Entry : Identifiable {
    
    func month() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM"
        if let dateToBeForated = date {
            let month = formatter.string(from: dateToBeForated)
            return month.uppercased()
        }
        return ""
    }
    
    func day() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        if let dateToBeForated = date {
            let day = formatter.string(from: dateToBeForated)
            return day
        }
        return ""
    }

}
