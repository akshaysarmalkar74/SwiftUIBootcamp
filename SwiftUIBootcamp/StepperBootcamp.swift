//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 12/01/26.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var stepperVal = 10
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper Bootcamp")
                .font(.title)
                .fontWeight(.bold)
            
            Stepper("Stepper: \(stepperVal)", value: $stepperVal, in: 0...20, step: 5, onEditingChanged: { _ in
                print(stepperVal)
            })
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    StepperBootcamp()
}
