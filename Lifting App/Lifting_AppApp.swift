//
//  Lifting_AppApp.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//

import SwiftUI
import CoreData
import Foundation


@main
struct Lifting_AppApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
