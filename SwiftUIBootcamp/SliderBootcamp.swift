//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 12/01/26.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var age: Float = 18
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Slider Bootcamp")
                .font(.title)
                .fontWeight(.bold)
            
            VStack {
                Text("Selected Age: \(String(format: "%.0f", age))")
                    .font(.headline)
                
                Slider(value: $age, in: 1...100) {
                    Text("Select Age")
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("100")
                }

                if age < 18 {
                    Text("Age should be greater than 18")
                        .font(.headline)
                        .foregroundStyle(Color.red)
                }
            }
        }
        .padding()
    }
}

#Preview {
    SliderBootcamp()
}
