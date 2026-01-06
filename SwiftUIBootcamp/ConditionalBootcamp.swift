//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/01/26.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State private var showRectangle: Bool = false
    @State private var showCircle: Bool = false
    
    
    var body: some View {
        VStack {
            Text("Conditional Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            if showRectangle {
                Rectangle()
                    .frame(height: 200)
            }
            
            if showCircle {
                Circle()
                    .frame(height: 200)
            }
            
            Spacer()
            
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 200)
            }
            
            
            VStack {
                Button {
                    showRectangle.toggle()
                } label: {
                    Text("Show Rectangle:\(showRectangle.description.capitalized)")
                        .padding()
                        .background(
                            Color.accent
                                .cornerRadius(8)
                        )
                }
                
                Button {
                    showCircle.toggle()
                } label: {
                    Text("Show Circle:\(showCircle.description.capitalized)")
                        .padding()
                        .background(
                            Color.green
                                .cornerRadius(8)
                        )
                }
            }
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ConditionalBootcamp()
}
