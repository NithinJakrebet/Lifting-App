//
//  PersistenceController.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//

import Foundation

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "YourDataModelName") // Replace with your data model name
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                fatalError("Error: \(error)")
            }
        }
    }
}
