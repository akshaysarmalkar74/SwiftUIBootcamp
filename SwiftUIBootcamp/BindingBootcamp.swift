//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/12/25.
//

import SwiftUI

struct BindingBootcamp: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Binding Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Text("\(counter)")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                ButtonView(counter: $counter)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var counter: Int
    
    var body: some View {
        Button {
            counter += 1
        } label: {
            Text("Increment")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(
                    Color.green
                        .cornerRadius(8)
                )
        }
    }
}

#Preview {
    BindingBootcamp()
}
