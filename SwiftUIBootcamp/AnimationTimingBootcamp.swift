//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 07/01/26.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Animation Timing Bootcamp")
                .font(.title)
                .fontWeight(.bold)
            
            Button {
                isAnimating.toggle()
            } label: {
                Text("Start Animation")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(8)
                    )
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: isAnimating ? 360 : 55,
                    height: 100
                )
                .animation(.linear, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: isAnimating ? 360 : 55,
                    height: 100
                )
                .animation(.easeIn, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: isAnimating ? 360 : 55,
                    height: 100
                )
                .animation(.easeOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: isAnimating ? 360 : 55,
                    height: 100
                )
                .animation(.easeInOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(
                    width: isAnimating ? 360 : 55,
                    height: 100
                )
                .animation(.spring(bounce: 0.4), value: isAnimating)

        }
        .padding(.horizontal)
    }
}

#Preview {
    AnimationTimingBootcamp()
}
