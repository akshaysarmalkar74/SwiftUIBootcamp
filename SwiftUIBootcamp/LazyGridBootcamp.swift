//
//  LazyGridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 05/12/25.
//

import SwiftUI

struct LazyGridBootcamp: View {
    private var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        VStack {
            TitleView(title: "Lazy Grid Bootcamp", shouldHaveTopPadding: true)
            
            ScrollView {
                sectionHeader
                
                lazyGrid
            }
            
        }
    }
    
    var sectionHeader: some View {
        Rectangle()
            .fill(Color.white)
            .frame(height: 400)
    }
    
    var lazyGrid: some View {
        LazyVGrid(columns: columns, spacing: 1, pinnedViews: [.sectionHeaders]) {
            Section {
                ForEach(1..<100) { number in
                    Rectangle()
                        .frame(height: 150)
                }
            } header: {
                Text("My Posts")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .fontDesign(.monospaced)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
            }
        }
    }
}

#Preview {
    LazyGridBootcamp()
}
