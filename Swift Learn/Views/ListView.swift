//
//  ListView.swift
//  Swift Learn
//
//  Created by MAC on 04/02/2023.
//

import SwiftUI

struct ListView: View {
    @State var show = false
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 5) {item in
                    ListItem()
                        .sheet(isPresented: $show, content:{ DetailView()})//you can also use .fullScreenCover instead of .sheet
                        .onTapGesture {show.toggle()}
                }
            }.navigationTitle("Courses")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
