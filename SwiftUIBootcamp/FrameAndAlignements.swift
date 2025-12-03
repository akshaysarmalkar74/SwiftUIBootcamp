//
//  FrameAndAlignements.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 03/12/25.
//

import SwiftUI

struct FrameAndAlignements: View {
    var body: some View {
        VStack {
            TitleView(title: "Frames & Alignments", shouldHaveTopPadding: true)
                .padding(.horizontal)
            
            Text("Hi, there!!")
                .background(Color.blue)
                .frame(width: 100, height: 100, alignment: .bottomLeading)
                .background(Color.gray)
                .frame(width: 200, height: 200, alignment: .topTrailing)
                .background(Color.yellow)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400, alignment: .bottom)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.cyan)
        }
    }
}

#Preview {
    FrameAndAlignements()
}
