//
//  DarkModeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 16/01/26.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Dark Mode Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 20) {
                Text("This is a primary text")
                    .foregroundStyle(Color.primary)
                
                Text("This is a secondary text")
                    .foregroundStyle(Color.secondary)
                
                Text("This is a white text")
                    .foregroundStyle(Color.white)
                
                Text("This is a black text")
                    .foregroundStyle(Color.black)
                
                Text("This is a UIKit Dynamic color text")
                    .foregroundStyle(Color(UIColor.label))
                
                Text("This is a SwiftUI dynamic color text")
                    .foregroundStyle(Color.accent)
                
                Text("This is a manual dynamic text")
                    .foregroundStyle(colorScheme == .dark ? Color.yellow : Color.red)
            }
            .font(.headline)
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
