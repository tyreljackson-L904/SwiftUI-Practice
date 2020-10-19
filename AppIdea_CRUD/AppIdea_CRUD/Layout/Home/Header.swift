//
//  Header.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/18/20.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            VStack {
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundColor(.black)
                    .frame(width: 100, height: 100)
                    .background(
                        Image("propic")
                            .resizable()
                            .frame(width: 75, height: 75)
                    )
                Text("@jerome.dev")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                Text("Creator")
                    .font(.system(size: 12))
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
