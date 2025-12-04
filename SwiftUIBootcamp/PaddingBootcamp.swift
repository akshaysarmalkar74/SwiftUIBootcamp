//
//  PaddingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 04/12/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Padding Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Text("Default Padding")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.pink
                            .cornerRadius(10)
                    )
                
                Text("Horizontal Padding")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(
                        Color.pink
                            .cornerRadius(10)
                    )
                
                Text("Vertical Padding")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .background(
                        Color.pink
                            .cornerRadius(10)
                    )
                
                Text("Custom Padding")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(25)
                    .background(
                        Color.pink
                            .cornerRadius(10)
                    )
                
                Text("Different Padding on BS")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical)
                    .background(
                        Color.pink
                            .cornerRadius(40)
                    )
            }
        }
    }
}

#Preview {
    PaddingBootcamp()
}
