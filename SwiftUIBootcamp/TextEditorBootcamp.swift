//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 11/01/26.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Text Editor Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ZStack {
                Color.black
                    .opacity(0.1)
                    .cornerRadius(8)
                
                TextEditor(text: $text)
                    .foregroundStyle(Color.black)
                    .scrollContentBackground(.hidden) // 🔑
                    .background(Color.clear)
                    .padding(.horizontal, 8)
                    .frame(height: 250)
                
            }
            .frame(height: 260)
            
            
            Spacer()
            
            Button {
                print(text)
            } label: {
                Text("Submit")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        (text.isEmpty ? Color.gray : Color.accent)
                            .cornerRadius(8)
                    )
            }
            .disabled(text.isEmpty)
        }
        .padding(.horizontal)
    }
}

#Preview {
    TextEditorBootcamp()
}
