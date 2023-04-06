//
//  SmallCardView.swift
//  Swift Learn
//
//  Created by MAC on 25/02/2023.
//

import SwiftUI

struct SmallCardView: View {
    
    var item: Item = items[1]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:99)
                .frame(maxWidth:.infinity)
            Text(item.title)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                //use the multilineTextAlignment() to align multiple line text to .center/.trailing/.leading.
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        .padding(16)
        .frame(height:222)
        .background(item.gradient)
        
        .cornerRadius(30.0)
    }
}

struct SmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCardView()
    }
}
