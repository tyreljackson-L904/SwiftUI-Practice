//
//  HomeView.swift
//  AppIdea_CRUD
//
//  Created by Tyrel Jackson on 10/18/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        HStack {
            Profile_Links_View()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
