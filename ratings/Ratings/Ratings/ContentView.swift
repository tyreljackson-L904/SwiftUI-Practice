//
//  ContentView.swift
//  Ratings
//
//  Created by Tyrel Jackson on 10/12/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
    
                }
            AddView()
                .tabItem {
                    Image(systemName: "plus.app")
                    
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")

                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
