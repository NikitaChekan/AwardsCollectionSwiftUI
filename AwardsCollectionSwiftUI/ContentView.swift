//
//  ContentView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Nikita Chekan on 25.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Awards")
                }
            CartRacingView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Cart Racing")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
