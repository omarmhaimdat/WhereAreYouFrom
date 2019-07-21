//
//  PlateNumber+CoreDataProperties.swift
//  WhereAreYouFrom
//
//  Created by M'haimdat omar on 20-07-2019.
//  Copyright © 2019 M'haimdat omar. All rights reserved.
//
//

import Foundation
import CoreData


extension PlateNumber {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlateNumber> {
        return NSFetchRequest<PlateNumber>(entityName: "PlateNumber")
    }

    @NSManaged public var id: Int16
    @NSManaged public var number: Int16

}
