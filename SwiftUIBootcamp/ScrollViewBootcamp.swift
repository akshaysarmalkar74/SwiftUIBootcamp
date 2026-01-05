//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 05/01/26.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        VStack {
            Text("ScrollView Bootcamp")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            ScrollView {
                VStack {
                    ForEach(1..<10, id: \.self) { idx in
                        if idx == 5 || idx == 10 {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(1..<5, id: \.self) { _ in
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 150)
                                    }
                                }
                                .frame(height: 200)
                            }
                        } else {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(height: 200)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
