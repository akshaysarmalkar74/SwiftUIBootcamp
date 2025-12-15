//
//  TextViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 15/12/25.
//

import SwiftUI

struct TextViewBootcamp: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TitleView(title: "TextView Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                TextEditor(text: $text)
                    .frame(height: 180)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke()
                    )
                
                Button {
                    print(text)
                } label: {
                    Text("Submit")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                        )
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    TextViewBootcamp()
}
