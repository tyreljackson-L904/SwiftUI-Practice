//
//  Profile_Links_View.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/19/20.
//

import SwiftUI

struct Profile_Links_View: View {
    
    var body: some View {
        VStack {
            Text("ProCode")
                .fontWeight(.bold)
                .font(.title)
                .edgesIgnoringSafeArea(.top)
                .frame(width: .infinity, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                
            Spacer()
            ZStack {
                
                VStack {
                        
                    HStack{
                        Header()
                            .padding(.horizontal)
                        GeometryReader { geo in
                            SocialLinks()
                                .padding(.top)
                                .padding(.vertical)
                                .frame(width: 100 , height: 275 )
                        }
                        
                    }
                    .frame(width: .infinity, height: 300)
                    .background(Color.red)
                    Spacer()
                }
                .edgesIgnoringSafeArea(.top)

            }
        }
    }
}

struct appBar : View {
    
    var body : some View {
        
        VStack {
            
            HStack {
                
                Spacer()
                
                Text("ProCode")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer(minLength: 0)
                
                
            }
            .padding()
            .background(Color.black.opacity(0.5))
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct Profile_Links_View_Previews: PreviewProvider {
    static var previews: some View {
        Profile_Links_View()
    }
}

