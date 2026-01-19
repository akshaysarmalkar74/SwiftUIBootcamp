//
//  OptionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 19/01/26.
//

import SwiftUI

struct OptionalBootcamp: View {
    @State private var message: String?
    
    var body: some View {
        VStack {
            Text("Optional Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            if let message {
                Text(message)
                    .font(.headline)
            } else {
                ProgressView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                message = "This is a message pretending to be come after API call."
            }
        }
    }
}

#Preview {
    OptionalBootcamp()
}
