//
//  SocialLinks.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/18/20.
//

import SwiftUI

struct SocialLinks: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { circle in
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "circle.grid.hex")
                            .font(.system(size: 35))
                            .frame(width: 60, height: 60)
                            .background(Color.init(red: 0.95, green: 0.95, blue: 0.95))
                            .foregroundColor(Color.black)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black,lineWidth: 3))
                    }
                }.padding(5)
            }
            
        }
    }
}

struct SocialLinks_Previews: PreviewProvider {
    static var previews: some View {
        SocialLinks()
    }
}
