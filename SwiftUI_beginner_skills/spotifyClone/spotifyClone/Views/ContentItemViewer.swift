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
    
    let songList:[Int: String] = [
        1: "Amazing Grace",
        2: "Belshazzar",
        3: "Children Go Where I Send Thee",
        4: "Daddy Sang Bass",
        5: "Far Side Banks of Jordan",
        6: "He Turned the Water Into Wine",
        7: "He’ll Understand and Say Well Done",
        8: "Here Was a Man",
        9: "How Great Thou Art",
        10: "I Was There When It Happened",
        11: "In The Sweet By and By",
        12: "It Is No Secret (What God Can Do",
        13: "It Was Jesus",
        14: "My Ship Will Sail",
        15: "Oh Come, Angel Band",
        16: "Peace In The Valley [feat. The Carter Family]",
        17: "Swing Low, Sweet Chariot",
        18: "That’s Enough",
        19: "The Great Speckled Bird",
        20: "The Old Account Was Settled Long Ago",
        21: "The Preacher Said, ‘Jesus Said’ (feat. Billy Graham)",
        22: "Troublesome Waters",
        23: "Were You There (When They Crucified My Lord)",
        24: "When The Roll Is Called Up Yonder"
    ]
    
    
    var body: some View {
        ZStack{
            // Layer 0
            LinearGradient(gradient: Gradient(colors: [Color.init(red: 61/255, green: 89/255, blue: 115/255), Color.black, Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            // Layer 1
            VStack{
                Spacer()
                    .frame(height: 50)
                
                Image("cash")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Cash")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                
                Text("Johnny Cash")
                    .foregroundColor(colorGray)
                    .font(.system(size: 16, weight: .medium))
                
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
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("PLAY")
                                .frame(width: 250, height: 38)
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .bold))
                                .background(
                                    RoundedRectangle(cornerRadius: 25.0).fill(Color.init(red: 42/255, green: 209/255, blue: 86/255))
                                        
                                )
                        }.padding(.bottom, 30)
                        
                        
                        ForEach(Array(songList.sorted(by: <)), id: \.key){ key, value in
                            HStack{
                                Image("cash")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 10)
                                    .font(.system(size: 20))
                                VStack {
                                    Text("\(value)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                    Text("Johnny Cash: Cash")
                                        .foregroundColor(colorGray)
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundColor(colorGray)
                            }
                            .padding()
                        }
                    }.background(Color.black)
                }
                .background(Color.clear)
                
                
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}