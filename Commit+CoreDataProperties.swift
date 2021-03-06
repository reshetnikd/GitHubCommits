//
//  Commit+CoreDataProperties.swift
//  GitHubCommits
//
//  Created by Dmitry Reshetnik on 10.08.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//
//

import Foundation
import CoreData


extension Commit {

    @nonobjc public class func createFetchRequest() -> NSFetchRequest<Commit> {
        return NSFetchRequest<Commit>(entityName: "Commit")
    }

    @NSManaged public var date: Date
    @NSManaged public var message: String
    @NSManaged public var sha: String
    @NSManaged public var url: String
    @NSManaged public var author: Author

}
