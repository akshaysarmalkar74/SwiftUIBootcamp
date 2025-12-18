//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 18/12/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State private var isLoading: Bool = true
    
    var body: some View {
        VStack {
            TitleView(title: "On Appear Bootcamp", shouldHaveTopPadding: true)
            
            if isLoading {
                ProgressView()
                    .controlSize(.extraLarge)
            } else {
                ScrollView {
                    LazyVStack {
                        ForEach(0..<50, id: \.self) { idx in
                            Rectangle()
                                .frame(height: 150)
                                .onAppear {
                                    print("Rectangle \(idx) is appearing!")
                                }
                                .onDisappear {
                                    print("Rectangle \(idx) is disappearing!")
                                }
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                isLoading = false
            }
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
