//
//  ContentView.swift
//  Weather
//
//  Created by Tyrel Jackson on 12/29/20.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    var body: some View {
        
        Text("Hello World")
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
