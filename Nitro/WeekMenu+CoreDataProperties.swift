//
//  WeekMenu+CoreDataProperties.swift
//  Nitro
//
//  Created by Elizabeth Schulze on 2019-10-13.
//  Copyright © 2019 Vikas Raj Bhagat. All rights reserved.
//
//

import Foundation
import CoreData


extension WeekMenu {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WeekMenu> {
        return NSFetchRequest<WeekMenu>(entityName: "WeekMenu")
    }

    @NSManaged public var day: String?
    @NSManaged public var meal: String?
    @NSManaged public var menu: String?

}
