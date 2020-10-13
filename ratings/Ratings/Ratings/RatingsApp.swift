//
//  RatingsApp.swift
//  Ratings
//
//  Created by Tyrel Jackson on 10/12/20.
//

import SwiftUI

@main
struct RatingsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
