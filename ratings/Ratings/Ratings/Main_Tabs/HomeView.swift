//
//  HomeView.swift
//  Ratings
//
//  Created by Tyrel Jackson on 10/13/20.
//

import SwiftUI


struct HomeView: View {
    @State private var offset = CGSize(width: 0, height: UIScreen.main.bounds.height * 0.5)
    @State var profilePic_offset:CGFloat = 100
    
    var colorGray = Color.init(red: 250/255, green: 250/255, blue: 250/255)
    
    var body: some View {
        
        ScrollView {
            HeaderView()
            Spacer(minLength: 30)
            ProfilePic()
            Cards()
                .offset(self.offset)
        }.background(colorGray).edgesIgnoringSafeArea(.top)
        .navigationBarTitle(Text("ProCode"))
    }
}

struct HeaderView: View {
    var pro:String = "Pro"
    var code:String = "Code"
    var colorGray = Color.init(red: 0/255, green: 128/255, blue: 163/255)
    
    var body: some View {
        VStack {
            
            HStack(spacing: 15) {
                
                Text("\(pro)")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.title)
                
                Text("\(code)")
                    .foregroundColor(Color.init(red: 123/255, green: 223/255, blue: 242/255))
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .frame(maxWidth: .infinity)
            .background(colorGray).edgesIgnoringSafeArea(.all)
            
            Spacer(minLength: 0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}
