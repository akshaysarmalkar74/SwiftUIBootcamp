//
//  ExtractingFunctionsAndViews.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/01/26.
//

import SwiftUI

struct ExtractingFunctionsAndViews: View {
    private var colors: [Color] = [.red, .blue, .yellow, .green, .accent]
    @State private var selectedColor = Color.accentColor
    
    var body: some View {
        ZStack {
            selectedColor
                .ignoresSafeArea()
            
            overlay
        }
    }
    
    private var overlay: some View {
        Button {
            handleClick()
        } label: {
            Text("Change Color")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(16)
        }
    }
    
    private func handleClick() {
        selectedColor = colors.randomElement() ?? .accentColor
    }
}

#Preview {
    ExtractingFunctionsAndViews()
}
