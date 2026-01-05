//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 05/01/26.
//

import SwiftUI

struct ForEachBootcamp: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Orange",
        "Mango",
        "Pineapple",
        "Strawberry"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("ForEach Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
            
            Section("Fruits") {
                ForEach(fruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text(fruit)
                            .font(.subheadline)
                        
                        Divider()
                    }
                    
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    ForEachBootcamp()
}
