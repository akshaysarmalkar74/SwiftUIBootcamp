//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 04/12/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Spacer Bootcamp", shouldHaveTopPadding: true)
            
            HStack {
                Rectangle()
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.blue)
                
                Rectangle()
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.blue)
                
                Rectangle()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
