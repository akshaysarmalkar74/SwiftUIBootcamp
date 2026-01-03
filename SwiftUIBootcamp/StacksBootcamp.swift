//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 03/01/26.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {
            Text("Stack Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ZStack {
                Color.black
                    .cornerRadius(8)
                
                VStack(spacing: 16) {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.4))
                    
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.4))
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.4))
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.4))
                    }
                    
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.4))
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.4))
                    }
                }
                .padding()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    StacksBootcamp()
}
