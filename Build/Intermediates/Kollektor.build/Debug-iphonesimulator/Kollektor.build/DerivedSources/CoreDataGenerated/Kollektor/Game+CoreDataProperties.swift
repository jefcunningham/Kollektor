//
//  Game+CoreDataProperties.swift
//  
//
//  Created by Jef Cunningham on 4/19/17.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Game {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Game> {
        return NSFetchRequest<Game>(entityName: "Game")
    }

    @NSManaged public var image: NSData?
    @NSManaged public var title: String?

}
