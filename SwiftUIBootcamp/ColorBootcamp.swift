//
//  ColorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/12/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Shapes Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                TitleView(
                    title: "SwiftUI Colors",
                    font: .headline,
                    shouldHaveTopPadding: true)
                
                Rectangle()
                    .fill(Color.green)
                
                Rectangle()
                    .fill(Color.blue)
                
                Divider()
                
                TitleView(
                    title: "UIKit Colors",
                    font: .headline,
                    shouldHaveTopPadding: true)
                
                Rectangle()
                    .fill(Color(uiColor: UIColor.red))
                
                Rectangle()
                    .fill(Color(uiColor: UIColor.systemTeal))
                
                Divider()
                
                TitleView(
                    title: "Dynamic UIKit Colors",
                    font: .headline,
                    shouldHaveTopPadding: true)
                
                Rectangle()
                    .fill(Color(uiColor: UIColor.secondarySystemFill))
                
                Rectangle()
                    .fill(Color(uiColor: UIColor.tertiarySystemFill))
                
                Divider()
                
                TitleView(
                    title: "Custom Dynamic Colors",
                    font: .headline,
                    shouldHaveTopPadding: true)
                
                Rectangle()
                    .fill(Color.accent)
                    .shadow(color: Color.accent.opacity(0.8), radius: 10)
                
                Rectangle()
                    .fill(Color.main)
                
            }
            .padding(.horizontal)
            
            
        }
    }
}

#Preview {
    ColorBootcamp()
}
