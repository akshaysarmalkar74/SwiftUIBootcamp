//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 19/01/26.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("OnAppear Bootcamp")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Count: \(counter)")
                .font(.headline)
            
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(1..<50, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 300)
                            .onAppear {
                                counter += 1
                            }
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
