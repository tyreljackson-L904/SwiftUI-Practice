//
//  ContentView.swift
//  codeTutorial_simpleCombinations1
//
//  Created by Tyrel Jackson on 6/19/20.
//  Copyright © 2020 Tyrel Jackson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
        
    var listOfColors:[Color] = [
        Color.red,
        Color.green,
        Color.blue
    ]
    
    @State private var counter = 0
    
    var body: some View {
        VStack{
            Text("\(counter)")
            ForEach(0..<listOfColors.count){i in
                
                Button(action: {
                    self.counter += 1
                }) {
                    Text("This Color is blah \(self.listOfColors[i].description)")
                        .background(self.listOfColors[i])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
