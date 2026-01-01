//
//  ShapeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/01/26.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        VStack {
            Text("Shapes Bootcamp")
                .font(.title)
                .fontWeight(.bold)
            
            VStack {
                Rectangle()
                    .fill(Color.blue)
                
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                
                Circle()
                    .foregroundStyle(Color.yellow)
                
                Ellipse()
                    .foregroundStyle(Color.yellow)
                
                Capsule(style: .circular)
                    .stroke(style: StrokeStyle(
                        lineWidth: 5,
                        lineCap: .butt,
                        dash: [10, 10],
                        dashPhase: 3
                    ))
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ShapeBootcamp()
}
