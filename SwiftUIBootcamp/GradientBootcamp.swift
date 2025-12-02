//
//  GradientBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 02/12/25.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Gradients Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Text("Gradient in Text")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.accent, .main],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                
                VStack(spacing: 12) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(
                            LinearGradient(
                                colors: [.red, .yellow, .blue],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(
                            RadialGradient(
                                colors: [.red, .yellow, .blue],
                                center: .topLeading,
                                startRadius: 30,
                                endRadius: 420
                            )
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(
                            AngularGradient(
                                colors: [.red, .blue, .black],
                                center: .topLeading,
                                angle: .degrees(215)
                            )
                        )
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    GradientBootcamp()
}
