//
//  CustomImages.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 02/12/25.
//

import SwiftUI

struct CustomImages: View {
    var body: some View {
        VStack {
            TitleView(title: "Custom Images Bootcamp", shouldHaveTopPadding: true)
            
            Image("custom-image")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .shadow(radius: 20)
//                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    CustomImages()
}
