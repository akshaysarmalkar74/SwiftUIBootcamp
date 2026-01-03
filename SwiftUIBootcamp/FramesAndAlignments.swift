//
//  FramesAndAlignments.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 03/01/26.
//

import SwiftUI

struct FramesAndAlignments: View {
    var body: some View {
        VStack {
            Text("Frames & Alignemnts")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Hello World")
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .frame(width: 300, height: 300, alignment: .topTrailing)
                .background(Color.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
                .frame(height: 500, alignment: .bottom)
                .background(Color.yellow)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.accent)
        }
    }
}

#Preview {
    FramesAndAlignments()
}
