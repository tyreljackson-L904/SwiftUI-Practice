//
//  AppIdea_CRUDApp.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/18/20.
//

import SwiftUI

@main
struct AppIdea_CRUDApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
