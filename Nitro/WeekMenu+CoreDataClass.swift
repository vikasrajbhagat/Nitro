//
//  WeekMenu+CoreDataClass.swift
//  Nitro
//
//  Created by Vikas Raj Bhagat on 2019-04-23.
//  Copyright © 2019 Vikas Raj Bhagat. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

public class WeekMenu: NSManagedObject {
    
    public static func create(forDay: String, forMeal: String) -> WeekMenu {
        
        let vContext = CoreDataStack.managedObjectContext
        guard let entity = NSEntityDescription.entity(forEntityName: "WeekMenu", in: vContext) else { fatalError() }
        let weekMenu = self.init(entity: entity, insertInto: vContext)
        weekMenu.day = forDay
        weekMenu.meal = forMeal
        do {
            if vContext.hasChanges {
                try vContext.save()
            }
        } catch {
            print("Error saving from Week Menu createLocal:  \(error)")
        }

        return weekMenu
    }

    // MARK: - get from local store
    static func getMenu(forDay: String, forMeal: String) -> WeekMenu? {
        let context = CoreDataStack.managedObjectContext
        
        let predicate = NSPredicate(format: "(%K == %@ AND %K == %@)", "day", forDay, "meal", forMeal)
        let request: NSFetchRequest<WeekMenu> = WeekMenu.fetchRequest()
        var selectedItem: WeekMenu?
        request.predicate = predicate
        do {
            let items = try context.fetch(request)
            if items.isEmpty {
                print("Error:  Zero Item found.")
            } else if items.count == 1 {
                selectedItem = items.first!
            } else {
                print("Error:  Too many Items found.")
            }
        } catch {
            print("Error fetching Week Menu from context: \(error)")
        }
        return selectedItem
    }
    
    public static func updateOrCreate(day: String, meal: String) -> WeekMenu {
        if let weekMenu = WeekMenu.getMenu(forDay: day, forMeal: meal) {
            return weekMenu
        } else {
            let newWeekMenu = WeekMenu.create(forDay: day, forMeal: meal)
            return newWeekMenu
        }
    }
    
    public required override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }
}
