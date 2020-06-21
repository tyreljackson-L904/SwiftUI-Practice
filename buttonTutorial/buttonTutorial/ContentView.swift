//
//  ContentView.swift
//  buttonTutorial
//
//  Created by Tyrel Jackson on 6/20/20.
//  Copyright © 2020 Tyrel Jackson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var love = false
    
    var body: some View {
        VStack {
            if love == true {
                Image(systemName: "heart.fill")
            } else {
                Image(systemName: "heart")
            }
            
            Button(action:{
                self.love.toggle()
            }) {
                Text("Click Me!")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
