//
//  ContentView.swift
//  ArseniCard
//
//  Created by Arseni Laputska on 2/9/21.
//  Copyright © 2021 Arseni. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.71, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("arseni")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 260, height: 350)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    
                Text("Arseni Laputska")
                    .font(Font.custom("BigShouldersDisplay-Light", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+375 29 733 59 11", imageName: "phone.circle.fill")
                InfoView(text: "arsenii12345@yandex.ru", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
