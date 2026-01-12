//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 12/01/26.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Toggle Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Change Status: \(isOn.description.capitalized)")
                .font(.headline)
            
            Toggle("Toggle Status", isOn: $isOn)
                .tint(Color.accent)
        }
        .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
