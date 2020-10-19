//
//  ContentView.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/18/20.
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
                    Image(systemName: "plus.app.fill")
                }
            
            NotificationView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
