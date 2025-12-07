//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 07/12/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State private var shouldAnimate = false
    
    var body: some View {
        VStack (spacing: 20){
            TitleView(title: "Animation Timing Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Button("Animate") {
                    shouldAnimate.toggle()
                }
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: shouldAnimate ? 320 : 70, height: 100)
                    .animation(.default, value: shouldAnimate)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: shouldAnimate ? 320 : 70, height: 100)
                    .animation(.linear, value: shouldAnimate)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: shouldAnimate ? 320 : 70, height: 100)
                    .animation(.easeIn, value: shouldAnimate)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: shouldAnimate ? 320 : 70, height: 100)
                    .animation(.easeOut, value: shouldAnimate)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: shouldAnimate ? 320 : 70, height: 100)
                    .animation(.easeInOut, value: shouldAnimate)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: shouldAnimate ? 320 : 70, height: 100)
                    .animation(.spring(
                        duration: 1.0,
                        bounce: 0.2,
                        blendDuration: 0.2
                    ), value: shouldAnimate)
            }
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
