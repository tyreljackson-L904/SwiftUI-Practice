//
//  ContentView.swift
//  practice-swiftui
//
//  Created by Tyrel Jackson on 10/10/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct LoginView: View {
    var body: some View {
        
        VStack{
            
            Image("heart-repo")
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color.white.opacity(0.2))
                .cornerRadius(30)
            
            HStack(spacing: 0){
                
                Text("")
            }
            
            Divider()
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
        }
        .background(LinearGradient(gradient: .init(colors: [Color("top"),Color("bottom")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all, edges: .all))
    }
}
