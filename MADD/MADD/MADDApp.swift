//
//  MADDApp.swift
//  MADD
//
//  Created by IM Student on 2024-11-28.
//

import SwiftUI

@main
struct MADDApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
