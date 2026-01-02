//
//  GradientBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 02/01/26.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        VStack {
            Text("Gradient Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        LinearGradient(
                            colors: [Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))],
                            startPoint: .bottomTrailing,
                            endPoint: .topLeading
                        )
                    )
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        RadialGradient(
                            colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))],
                            center: .center,
                            startRadius: 40,
                            endRadius: 200
                        )
                    )
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        AngularGradient(
                            colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))],
                            center: .topLeading,
                            angle: .degrees(180 + 45)
                        )
                    )
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    GradientBootcamp()
}
