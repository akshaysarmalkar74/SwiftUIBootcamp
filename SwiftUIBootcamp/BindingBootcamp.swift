//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/01/26.
//

import SwiftUI

struct BindingBootcampButton: View {
    @Binding var selectedColor: Color
    var colors: [Color] = [.red, .blue, .yellow, .green, .accent]
    
    var body: some View {
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

struct BindingBootcamp: View {
    
    @State var selectedColor = Color.accentColor
    
    var body: some View {
        ZStack {
            selectedColor
                .ignoresSafeArea()
            
            BindingBootcampButton(selectedColor: $selectedColor)
        }
    }
}

#Preview {
    BindingBootcamp()
}
