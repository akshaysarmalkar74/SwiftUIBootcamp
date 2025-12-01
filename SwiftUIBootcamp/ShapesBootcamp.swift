//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/12/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Shapes Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Rectangle()
                    .foregroundColor(Color.blue)
                
                RoundedRectangle(cornerRadius: 10)
                    .trim(from: 0, to: 0.5)
                    .fill(Color.yellow)
                
                Group {
                    Circle()
                        .fill(Color.brown)
                    Ellipse()
                        .fill(Color.brown)
                }
                
                Capsule()
                    .stroke(
                        style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round)
                    )
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ShapesBootcamp()
}
