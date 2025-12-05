//
//  ForEachAndScrollViews.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 05/12/25.
//

import SwiftUI

struct ForEachAndScrollViews: View {
    private let colors: [Color] = [
        .red,
        .blue,
        .yellow,
        .green,
        .purple,
    ]
    
    var body: some View {
        VStack {
            TitleView(title: "For Each & ScrollViews", shouldHaveTopPadding: true)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(1..<10) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 100)
                        .foregroundColor(randomColor())
                }
            }
        }
        .padding(.horizontal)
    }
    
    private func randomColor() -> Color {
        colors.randomElement() ?? .black
    }
}

#Preview {
    ForEachAndScrollViews()
}
