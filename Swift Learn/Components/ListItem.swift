//
//  ListItem.swift
//  Swift Learn
//
//  Created by MAC on 06/02/2023.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.hexagongrid.fill")
                .renderingMode(.original) //this allows the image to be rendered with its origial colors.
                .font(.body) //this sets the font size of the image to .body size( the default size)
                .frame(width:36, height: 36) //this allocates a given space(the space is as wide as the width and aslong as the heigth) to the image container.
                .background(.black) //this gives color  to the image background.
                .mask(Circle()) //This allows us to use a specified shape underneath.https://medium.com/devtechie/masking-views-in-swiftui-12232e095cde
            VStack(alignment: .leading, spacing: 4.0) {
                Text("Intro to iOS Design")
                Text("Design an iOS app from scratch for iOS 13, iPadOS and Big Sur.")
            }
        }.padding(.vertical)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
