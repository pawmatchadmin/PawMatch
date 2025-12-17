//
//  Pet+CoreDataProperties.swift
//  PawMatch
//
//  Created by John Castillo on 12/16/25.
//
//

import Foundation
import CoreData

extension Pet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pet> {
        return NSFetchRequest<Pet>(entityName: "Pet")
    }

    @NSManaged public var name: String?
    @NSManaged public var species: String?
    @NSManaged public var breed: String?
    @NSManaged public var adoptionDate: Date?
}

extension Pet: Identifiable { }

