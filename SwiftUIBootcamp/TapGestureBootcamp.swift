//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 19/01/26.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Tap Gesture Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Counter: \(counter)")
                .font(.headline)
            
            VStack {
                Button {
                    counter += 1
                } label: {
                    Text("Button")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(
                            Color.accent
                                .cornerRadius(8)
                        )
                }
                
                Text("Tap Gesture")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(8)
                    )
                    .onTapGesture {
                        counter += 1
                    }
                
                Text("Double Tap Gesture")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.accent
                            .cornerRadius(8)
                    )
                    .onTapGesture(count: 2) {
                        counter += 1
                    }
            }
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
