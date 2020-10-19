//
//  Profile_Links_View.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/19/20.
//

import SwiftUI

struct Profile_Links_View: View {
    var body: some View {
        ZStack {
            HStack(spacing: 5) {
                Header()
                    .padding()
                Spacer(minLength: 0)
                
                    
                SocialLinks()
                    .padding()
            }
            .frame(width: .infinity, height: 275)
            .background(Color.red)
            
        }
        
        
    }
    
}

struct Profile_Links_View_Previews: PreviewProvider {
    static var previews: some View {
        Profile_Links_View()
    }
}
