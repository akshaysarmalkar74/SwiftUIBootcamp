//
//  ColorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/01/26.
//

import SwiftUI

struct ColorBootcamp: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Color Bootcamp")
                .font(.title)
                .fontWeight(.bold)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Fixed Color")
                    .foregroundStyle(Color.red)
                
                Text("Dynamic Color (Primary)")
                    .foregroundStyle(.primary)
                
                Text("Dynamic Color (Secondary)")
                    .foregroundStyle(.secondary)
                
                Text("Dynamic Custom Color")
                    .foregroundStyle(.accent)
                
                Text("Dynamic using code")
                    .foregroundStyle(colorScheme == .dark ? .blue : .yellow)
            }
            .font(.headline)
        }
    }
}

#Preview {
    ColorBootcamp()
}
