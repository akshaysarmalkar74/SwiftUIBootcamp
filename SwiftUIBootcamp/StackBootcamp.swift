//
//  StackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 03/12/25.
//

import SwiftUI

struct StackBootcamp: View {
    private let colors: [Color] = [
        .red,
        .blue,
        .yellow,
        .green,
        .purple,
    ]
    
    var body: some View {
        VStack {
            TitleView(title: "Stacks Bootcamp", shouldHaveTopPadding: true)

            ScrollView {
                VStack(spacing: 16) {
                    ForEach(0..<100, id: \.self) { index in
                        
                        if index % 20 == 0 {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ForEach(0..<10, id: \.self) { item in
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(randomColor())
                                            .frame(width: 200, height: 300)
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                        } else {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(randomColor())
                                .frame(height: 200)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
    
    // Generates color once per view refresh and not per render
    private func randomColor() -> Color {
        colors.randomElement() ?? .black
    }
}

#Preview {
    StackBootcamp()
}
