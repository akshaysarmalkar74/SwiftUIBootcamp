//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 11/12/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            Text("Context Menu Demo")
                .font(.title)
                .fontWeight(.bold)
            
            Text("This is a context menu. It is a menu that appears when you right click on an item.")
        }
        .foregroundStyle(Color.white)
        .padding(35)
        .background(
            Color.accent
                .cornerRadius(45)
        )
        .shadow(color: Color.accent.opacity(0.5), radius: 70)
        .padding(.horizontal)
        .contextMenu {
            Button {
                
            } label: {
                Label("Mark as favorite", systemImage: "heart.fill")
            }
            
            Button {
                
            } label: {
                Label("Report Post", systemImage: "exclamationmark.triangle.fill")
            }
            .tint(.red)
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
