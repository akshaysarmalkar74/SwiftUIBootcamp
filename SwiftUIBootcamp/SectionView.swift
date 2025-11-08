//
//  SectionView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/11/25.
//

import SwiftUI

struct SectionView<Content: View>: View {
    let title: String
    let content: () -> Content
    
    init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(title)
                .font(.headline)
                .padding(.bottom, 5)
            
            content()
                .font(.body)
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(14)
        .shadow(radius: 2)
    }
}

