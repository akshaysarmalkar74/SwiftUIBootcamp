//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 16/12/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var isAnonymous: Bool = false
    
    var body: some View {
        VStack(spacing: 12) {
            TitleView(title: "Toggle Bootcamp", shouldHaveTopPadding: true)
            
            VStack(spacing: 12) {
                Text("Status: \(isAnonymous ? "Anonymous" : "Not Anonymous")")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Toggle("Is Anonymous?", isOn: $isAnonymous)
                    .labelsHidden()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ToggleBootcamp()
}
