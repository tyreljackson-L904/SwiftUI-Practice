//
//  _00DaysOfCodeApp.swift
//  100DaysOfCode
//
//  Created by Tyrel Jackson on 10/17/20.
//

import SwiftUI

@main
struct _00DaysOfCodeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
