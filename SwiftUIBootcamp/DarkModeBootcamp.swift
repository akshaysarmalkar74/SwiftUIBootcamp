//
//  DarkModeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 18/12/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleView(title: "Dark Mode Bootcamp", shouldHaveTopPadding: true)
                
                VStack(spacing: 12) {
                    Text("This is primary text")
                        .foregroundStyle(Color.primary)
                    
                    Text("This is secondary text")
                        .foregroundStyle(Color.secondary)
                    
                    Text("This is black colored text")
                        .foregroundStyle(Color.black)
                    
                    Text("This is white colored text")
                        .foregroundStyle(Color.white)

                    Text("Asset Dynamic Color")
                        .foregroundStyle(.accent)
                    
                    Text("Dynamic Color via Code")
                        .foregroundStyle(colorScheme == .dark ? Color.yellow: Color.red)
                }
                .font(.headline)
                .fontWeight(.semibold)
            }
        }
        
        
    }
}

#Preview("iPhone 15") {
    DarkModeBootcamp()
        .colorScheme(.light)
}

#Preview("iPhone SE") {
    DarkModeBootcamp()
        .colorScheme(.dark)
}
