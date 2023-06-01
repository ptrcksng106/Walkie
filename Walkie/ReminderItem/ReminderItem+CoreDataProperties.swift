//
//  ReminderItem+CoreDataProperties.swift
//  Walkie
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 01/06/23.
//
//

import Foundation
import CoreData


extension ReminderItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ReminderItem> {
        return NSFetchRequest<ReminderItem>(entityName: "ReminderItem")
    }

    @NSManaged public var title: String?
    @NSManaged public var date_reminder: Date?
    @NSManaged public var is_switched: Bool

}

extension ReminderItem : Identifiable {

}
