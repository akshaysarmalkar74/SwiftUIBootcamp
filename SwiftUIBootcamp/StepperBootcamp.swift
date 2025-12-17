//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 18/12/25.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var stepperVal = 10
    @State private var secondStepperVal: Int = 30
    private var maxValue = 50
    
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Stepper Bootcamp", shouldHaveTopPadding: true)
            
            Stepper(
                "Stepper: \(stepperVal)",
                value: $stepperVal,
                step: 10,
                onEditingChanged: { hasChanged in
                    print(hasChanged)
                }
            )
            
            Stepper(
                "Stepper: \(secondStepperVal)") {
                    if secondStepperVal + 10 <= maxValue {
                        secondStepperVal += 10
                    } else {
                        secondStepperVal = 0
                    }
                } onDecrement: {
                    if secondStepperVal - 10 >= 0 {
                        secondStepperVal -= 10
                    } else {
                        secondStepperVal = 0
                    }
                }
        }
        .font(.headline)
        .fontWeight(.semibold)
        .padding(.horizontal)
    }
}

#Preview {
    StepperBootcamp()
}
