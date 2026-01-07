//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 07/01/26.
//

import SwiftUI

// Transition is used for elements coming on screen or going off screen
// Animation is used for element which are already on screen

struct TransitionBootcamp: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Text("Transition Bootcamp")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Button {
                    withAnimation {
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
            }
            
            if isAnimating {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .transition(
//                        AnyTransition.slide
//                        AnyTransition.move(edge: .bottom)
                        AnyTransition.asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: .move(edge: .trailing)
                        )
                    )
                
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
