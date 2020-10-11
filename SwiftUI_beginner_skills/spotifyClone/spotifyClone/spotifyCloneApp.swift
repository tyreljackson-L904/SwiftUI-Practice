//
//  spotifyCloneApp.swift
//  spotifyClone
//
//  Created by Tyrel Jackson on 10/10/20.
//

import SwiftUI

@main
struct spotifyCloneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

struct spotifyCloneApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
