//
//  ContentItemViewer.swift
//  spotifyClone
//
//  Created by Tyrel Jackson on 10/11/20.
//

import SwiftUI

struct ContentItemViewer: View {
    var topSpacer_height:CGFloat = 400
    var colorGray:Color = Color.init(red: 0.5, green: 0.5, blue: 0.5)
    
    var body: some View {
        ZStack{
            // Layer 1
            VStack{
                Spacer()
                    .frame(height: 50)
                
                Image("cash")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Title")
                
                Text("Subtitle")
                    .foregroundColor(colorGray)
                
                Spacer()
            }
            // Layer 2
            ScrollView{
                VStack(spacing: 0){
                    HStack {
                        Spacer()
                            .frame(height: topSpacer_height)
                            .background(LinearGradient(gradient: Gradient(colors: [
                                Color.clear,
                                Color.clear,
                                Color.clear,
                                Color.clear,
                                Color.black
                            ]), startPoint: .top, endPoint: .bottom))
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
