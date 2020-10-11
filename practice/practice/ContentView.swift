//
//  ContentView.swift
//  practice
//
//  Created by Tyrel Jackson on 10/10/20.
//

import SwiftUI
import CoreData



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
