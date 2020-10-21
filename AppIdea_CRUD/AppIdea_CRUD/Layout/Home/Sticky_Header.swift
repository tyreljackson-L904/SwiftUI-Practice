//
//  Sticky_Header.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/19/20.
//

import SwiftUI

struct Sticky_Header: View {
    var body: some View {
        ZStack {
            
            VStack {
                
                HStack {
                    
                    Spacer(minLength: 0)
                    
                    Text("ProCode")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(.top)
                        
                        
                    
                    Spacer(minLength: 0)
                    
                }
                .frame(width: .infinity, height: 75)
                .background(Color.white)
                
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
            .background(Color.gray)
            .edgesIgnoringSafeArea(.top)
        }
        
    }
}

struct Sticky_Header_Previews: PreviewProvider {
    static var previews: some View {
        Sticky_Header()
    }
}
