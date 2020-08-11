//
//  InfoView.swift
//  MyCard
//
//  Created by Сергей Федяев on 11.08.2020.
//  Copyright © 2020 Sergey Fedyaev. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(red: 1, green: 0.84, blue: 0.44))
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(Color(red: 0.34, green: 0.33, blue: 0.43))
                Text(text).foregroundColor(Color(red: 0.24, green: 0.16, blue: 0.27))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
