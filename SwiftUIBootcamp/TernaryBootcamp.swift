//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/12/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State private var hasCornerRadius: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Ternary Bootcamp", shouldHaveTopPadding: true)
            
            Button {
                hasCornerRadius.toggle()
            } label: {
                Text("Toggle Corner Radius: \(hasCornerRadius.description.capitalized)")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(10)
                    )
            }
            
            RoundedRectangle(cornerRadius: hasCornerRadius ? 40 : 0)
                .fill(Color.main)
                .frame(
                    width: hasCornerRadius ? 300 : 100,
                    height: hasCornerRadius ? 300 : 100
                )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
