//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 07/12/25.
//

import SwiftUI


struct AnimationBootcamp: View {
    @State private var hasAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Animation Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Button("Animate") {
                    withAnimation(
                        Animation.default
                            .repeatForever()
                    ) {
                        hasAnimated.toggle()
                    }
                }
                
                Spacer()
                
                RoundedRectangle(cornerRadius: hasAnimated ? 50 : 20)
                    .fill(hasAnimated ? Color.red : Color.cyan)
                    .frame(
                        width: hasAnimated ? 100 : 250,
                        height: hasAnimated ? 100 : 250
                    )
//                    .rotationEffect(Angle(degrees: hasAnimated ? 360 : 0))
                    .offset(y: hasAnimated ? 250 : 0)
                
                Spacer()
            }
        }
    }
}


#Preview {
    AnimationBootcamp()
}
