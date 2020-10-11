//
//  ContentItemViewer.swift
//  spotifyClone
//
//  Created by Tyrel Jackson on 10/11/20.
//

import SwiftUI

struct ContentItemViewer: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                    .frame(height: 50)
                
                Image(systemName: "music.note")
                
                Text("Title")
                
                Text("Subtitle")
                
                Spacer()
            }
            
            ScrollView{
                VStack(spacing: 0){
                    HStack {
                        Spacer()
                            .frame(height: 200)
                            .background(Color.red.opacity(0.3))
                    }
                    
                    VStack {
                        ForEach(0..<50){ index in
                            HStack{
                                Text("\(index)")
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                }
                .background(Color.yellow.opacity(0.1))
                
                
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
