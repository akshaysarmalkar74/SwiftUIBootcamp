//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 07/01/26.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State private var isAnimating: Bool = true
    
    var body: some View {
        VStack {
            Text("Animation Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Button {
                withAnimation(Animation.easeIn.repeatCount(5, autoreverses: false).delay(1.0)) {
                    isAnimating.toggle()
                }
                
            } label: {
                Text("Toggle Animate")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(8)
                    )
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 20)
                .fill(isAnimating ? Color.orange : Color.yellow)
                .frame(
                    width: isAnimating ? 100 : 300,
                    height: isAnimating ? 100 : 200
                )
                .offset(y: isAnimating ? 250 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
