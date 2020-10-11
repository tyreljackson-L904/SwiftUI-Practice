//
//  practice_swiftuiApp.swift
//  practice-swiftui
//
//  Created by Tyrel Jackson on 10/10/20.
//

import SwiftUI

@main
struct practice_swiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
