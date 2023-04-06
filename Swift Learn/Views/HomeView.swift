//
//  HomeView.swift
//  Swift Learn
//
//  Created by MAC on 04/02/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
         NavigationView{
            ScrollView{
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing:16){
                        ForEach(items) {item in
                            NavigationLink(destination: DetailView()){
                                CardView(item: item)
                           }
                        }
                        //Items is an array of instanced multiple "Struct Item", ForEach creates a loop that runs through the array sequentially,for each run, an item in the items array is picked and the innner code builds,cardview accepts a item "property" of type "Item" which is passed from the "items" array.
                    }.padding()
                }
                Text("Recent Course")
                    .font(.headline).bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                LazyVGrid(columns:[GridItem(.adaptive(minimum: 160), spacing:16)], spacing:16){
                    ForEach(items) {item in
                        NavigationLink(destination: DetailView()){
                            SmallCardView(item: item)
                       }
                    }
                }.padding()
                //To learn more about lazygrid: //https://developer.apple.com/documentation/swiftui/lazyvgrid
                   //https://swiftwithmajid.com/2020/07/08/mastering-grids-in-swiftui/
            }.navigationTitle("Learn SwiftUI")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
