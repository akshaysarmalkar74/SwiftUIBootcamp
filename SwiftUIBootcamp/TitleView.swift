//
//  TitleView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/12/25.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var font: Font = .largeTitle
    var shouldHaveTopPadding: Bool
    
    var body: some View {
        Text(title)
            .font(font)
            .fontWeight(.semibold)
            .fontDesign(.monospaced)
            .background(
                Color.yellow
            )
            .padding(.top, shouldHaveTopPadding ? 10 : 0)
    }
}

#Preview {
    TitleView(title: "Text Bootcamp", shouldHaveTopPadding: false)
}
