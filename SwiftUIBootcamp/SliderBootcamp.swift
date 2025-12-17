//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 18/12/25.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var sliderValue: Double = 5
    
    var body: some View {
        VStack {
            TitleView(title: "Slider Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Text("Slider: \(sliderValue)")
                
                Slider(
                    value: $sliderValue, in: 1...10, step: 1) {
                        EmptyView()
                    } minimumValueLabel: {
                        Text("1")
                    } maximumValueLabel: {
                        Text("10")
                    }
            }
            
        }
    }
}

#Preview {
    SliderBootcamp()
}
