//
//  ContentView.swift
//  MyCard
//
//  Created by Сергей Федяев on 11.08.2020.
//  Copyright © 2020 Sergey Fedyaev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.73, green: 0.82, blue: 0.59).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Photo1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color(red: 1.0, green: 0.84, blue: 0.44), lineWidth: 3))
                Text("Sergey Fedyaev").font(Font.custom("Helvetica-Light", size: 40)).foregroundColor(Color(red: 0.24, green: 0.16, blue: 0.27))
                Text("iOS Developer").font(.system(size: 25)).foregroundColor(Color(red: 0.24, green: 0.16, blue: 0.27))
                Divider().hidden()
                InfoView(text: "+7 (963) 767-77-05", imageName: "phone.fill")
                InfoView(text: "elserjo@mail.ru", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
