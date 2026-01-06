//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/01/26.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Ternary Bootcamp")
                .font(.title)
                .fontWeight(.semibold)
            
            RoundedRectangle(cornerRadius: isOn ? 50 : 10)
                .fill(
                    isOn ? Color.accent : Color.yellow
                )
                .frame(width: 300, height: 100)
                .shadow(color: .black.opacity(0.4), radius: 15)
            
            Button {
                isOn.toggle()
            } label: {
                Text("Change Corner Radius")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.red
                            .cornerRadius(8)
                    )
            }
        }
    }
}

#Preview {
    TernaryBootcamp()
}
