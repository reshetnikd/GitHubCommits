//
//  Commit+CoreDataClass.swift
//  GitHubCommits
//
//  Created by Dmitry Reshetnik on 04.08.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Commit)
public class Commit: NSManagedObject {
    override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
        print("Init called!")
    }

}
