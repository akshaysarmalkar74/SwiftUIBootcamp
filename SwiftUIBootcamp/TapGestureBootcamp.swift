//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 18/12/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Tap Gesture Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Button {
                    print("Button Tapped")
                } label: {
                    Text("Button")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            Color.accent
                                .cornerRadius(8)
                        )
                }
                
                Text("Tap Gesture: Single")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(8)
                    )
                    .onTapGesture {
                        print("Single Tap Gesture Tapped")
                    }
                
                Text("Tap Gesture: Multiple")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(8)
                    )
                    .onTapGesture(count: 2) {
                        print("Multiple Tap Gesture Tapped")
                    }
            }
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
