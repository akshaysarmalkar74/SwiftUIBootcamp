//
//  PaddingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 04/01/26.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        Text("Padding Bootcamp")
            .font(.largeTitle)
            .fontWeight(.bold)
        
        VStack {
            Text("Default Padding")
                .padding()
                .background(Color.accent)
                .cornerRadius(10)
            
            Text("More Horizontal Padding")
                .padding()
                .padding(.horizontal)
                .background(Color.accent)
                .cornerRadius(10)
            
            Text("More Vertical Padding")
                .padding()
                .padding(.vertical)
                .background(Color.accent)
                .cornerRadius(10)
            
            Text("Custom Padding")
                .padding(.top, 10)
                .padding(.trailing, 20)
                .padding(.bottom, 30)
                .padding(.leading, 40)
                .background(Color.accent)
                .cornerRadius(10)
        }
        .font(.headline)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    PaddingBootcamp()
}
