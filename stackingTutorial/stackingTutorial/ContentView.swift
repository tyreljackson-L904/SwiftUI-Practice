//
//  ContentView.swift
//  stackingTutorial
//
//  Created by Tyrel Jackson on 6/20/20.
//  Copyright © 2020 Tyrel Jackson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Text("")
                .frame(width: 100, height: 50)
                .background(Color.green.opacity(0.3))
            Text("")
            .frame(width: 100, height: 50)
            .background(Color.red.opacity(0.3))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
