//
//  DetailView.swift
//  Swift Learn
//
//  Created by MAC on 03/02/2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .leading, spacing: 8.0){
                    Image("Blob 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:128)
                        .frame(maxWidth:.infinity)
                    Text("Swift UI for iOS 16")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("A complete guide to designing for iOS 16 with videos, examples and design files")
                        .lineLimit(2)
                        .opacity(0.7)
                    Text("20 sections - 3 hours")
                        .opacity(0.7)
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .padding(16)
                
                .background(LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 0.29981932044029236, green: 0.13958334922790527, blue: 0.8374999761581421, alpha: 1)), location: 0),
                        .init(color: Color(#colorLiteral(red: 0.7541666626930237, green: 0.2042534351348877, blue: 0.583319902420044, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.5002249700310126, y: 3.0834283490377423e-7),
                    endPoint: UnitPoint(x: -0.0016390833199537713, y: 0.977085239704672)))
                
                
                VStack(alignment: .leading, spacing: 16){
                    Text("SwiftUI is hands-down the best way for designers to take a first step into code.")
                        .font(.headline)
                    Text("This course").font(.title).bold()
                    Text("This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply the techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner-friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions. SwiftUI makes it super easy to animate and add gestures to your app. The code is lightweight and easy to understand, even for newcomers who come from React or Flutter.")
                }.padding()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

