//
//  ContentView.swift
//  Swift Learn
//
//  Created by MAC on 04/01/2023.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()  //HomeView is a Tab Item, .tabItem is a modifier to customize the content of a tabItem
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ListView()
                .tabItem {
                    Image(systemName: "homepod")
                    Text("About")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//BY default your padding is set to 16
//padding.vertical means to stretch the view vertically, it applies padding to top and bottom
//padding.horizontal means to stretch the view horizontally, it applies padding to left and right.
// https://codeible.com/view/videotutorial/xG4LR9lougtBQpDVg1Qh;title=Mask
// .renderingMode(.original)
//252,329
