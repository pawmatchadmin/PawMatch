//
//  PawMatchApp.swift
//  PawMatch
//
//  Created by John Castillo on 12/16/25.
//

import SwiftUI
import CoreData

@main
struct PawMatchApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
