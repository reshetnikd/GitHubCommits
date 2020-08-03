//
//  ViewController.swift
//  GitHubCommits
//
//  Created by Dmitry Reshetnik on 31.07.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
    var container: NSPersistentContainer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        container = NSPersistentContainer(name: "GitHub")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                print("Unresolved error \(error)")
            }
        }
    }
    
    func saveContext() {
        if container.viewContext.hasChanges {
            do {
                try container.viewContext.save()
            } catch {
                print("An error occured while saving: \(error)")
            }
        }
    }


}

