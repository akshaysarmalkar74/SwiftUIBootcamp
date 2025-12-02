//
//  SystemImagesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 02/12/25.
//

import SwiftUI

struct SystemImagesBootcamp: View {
    var body: some View {
        VStack(spacing: 12) {
            TitleView(title: "System Images Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Text("Single Tone Images")
                    .font(.title)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "house.fill")
                    
                    Image(systemName: "heart.fill")
                    
                    Spacer()
                    
                    Image(systemName: "car.fill")
                }
                .font(.title2)
                .foregroundStyle(.black)
                .padding(12)
                .background(
                    Capsule()
                        .fill(Color.orange)
                )
            }
            
            VStack {
                Text("Multi Tone Images")
                    .font(.title)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "person.fill.badge.plus")
                        .symbolRenderingMode(.multicolor)
                    
                    Image(systemName: "leaf.fill")
                        .symbolRenderingMode(.multicolor)
                    
                    Spacer()
                    
                    Image(systemName: "book.fill")
                        .symbolRenderingMode(.multicolor)
                }
                .font(.title2)
                .foregroundStyle(.black)
                .padding(12)
                .background(
                    Capsule()
                        .fill(Color.yellow)
                )
            }
        }
        .padding()
    }
}

#Preview {
    SystemImagesBootcamp()
}
