//
//  Cards.swift
//  Ratings
//
//  Created by Tyrel Jackson on 10/12/20.
//

import SwiftUI

struct Cards: View {
    var body: some View {
        ZStack {
            Color.init(red: 0/255, green: 128/255, blue: 163/255)
            ForEach(1..<10, id: \.self){ i in
                VStack {
                    HStack{
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40, alignment: .topLeading)
                        VStack {
                            Text("@jerome.dev")
                                .foregroundColor(.init(red: 250/255, green: 250/255, blue: 250/255))
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                            Text("Creator")
                                .foregroundColor(.init(red: 250/255, green: 250/255, blue: 250/255))
                                .font(.system(size: 16))
                            
                        }
                        .padding()
                        
                    }
                    
                    Text("Shoes")
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    
                    Image("nikes")
                        .resizable()
                        .frame(width: 250, height: 200)
                    Text("Nike Shoes")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                    Text("$160.00")
                        .foregroundColor(.white)
                    
                }.padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: 35))
            .frame(height: 400)
        }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}
