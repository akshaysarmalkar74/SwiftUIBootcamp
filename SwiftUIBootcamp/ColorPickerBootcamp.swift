//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 17/12/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State private var bgColor: Color = .green
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            ColorPicker("Select a Color:", selection: $bgColor)
                .font(.headline)
                .padding(30)
                .background(
                    Color.white
                        .cornerRadius(10)
                )
                .padding(.horizontal)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
