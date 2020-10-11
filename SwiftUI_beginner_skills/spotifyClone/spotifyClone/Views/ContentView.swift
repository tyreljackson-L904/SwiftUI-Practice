//
//  ContentView.swift
//  spotifyClone
//
//  Created by Tyrel Jackson on 10/10/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        
        TabView(selection: $selection){
            HomePage()
                .font(.title)
                .tabItem{
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                tag(0)
            SearchPage()
                .font(.title)
                .tabItem {
                    VStack{
                        Image(systemName: "play.fill")
                        Text("Search")
                    }
                    
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
