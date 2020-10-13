//
//  ProfilePic.swift
//  Ratings
//
//  Created by Tyrel Jackson on 10/12/20.
//

import SwiftUI

struct ProfilePic: View {
    var body: some View {
        ZStack {
            
            VStack {
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundColor(.black)
                    .frame(width: 100, height: 100)
                    .background(
                        Image("propic")
                            .resizable()
                            .frame(width: 100, height: 100)
                    )
                
                Text("@jerome.dev")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                Text("Creator")
                    .font(.system(size: 12))
            }
        }.background(Color.clear)
    }
}


struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePic()
    }
}
