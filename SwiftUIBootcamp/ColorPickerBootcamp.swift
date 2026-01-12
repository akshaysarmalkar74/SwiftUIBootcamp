//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 12/01/26.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State private var selectedColor = Color.accent
    
    var body: some View {
        ZStack {
            selectedColor
                .ignoresSafeArea()
            
            ColorPicker("Select Color", selection: $selectedColor)
                .font(.title3)
                .fontWeight(.bold)
                .padding()
                .padding(.vertical)
                .background(
                    Color.white
                        .cornerRadius(8)
                )
                .padding()
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
