//
//  CardView.swift
//  Swift Learn
//
//  Created by MAC on 04/02/2023.
//

import SwiftUI

struct CardView: View {
    
    var item: Item = items[1]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:128)
                .frame(maxWidth:.infinity)
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                //use the multilineTextAlignment() to align multiple line text to .center/.trailing/.leading.https://www.hackingwithswift.com/quick-start/swiftui/how-to-adjust-text-alignment-using-multilinetextalignment
            Text(item.text)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .opacity(0.7)
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        .padding(16)
        .frame(width:252, height:329)//width was formerly 252
        .background(item.gradient)
        
        .cornerRadius(30.0)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
