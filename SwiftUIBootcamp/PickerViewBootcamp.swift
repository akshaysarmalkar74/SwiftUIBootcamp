//
//  PickerViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 16/01/26.
//

import SwiftUI

struct PickerViewBootcamp: View {
    @State private var selectedFruit: String = "Apple"
    private var fruits = ["Apple", "Banana", "Cherry", "Pineapple"]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Select Fruit", selection: $selectedFruit, content: {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit).tag(fruit)
                    }
                })
                .pickerStyle(.palette)
                .tint(.accent)
            }
            .padding()
            .navigationTitle("Picker View Bootcamp")
        }
    }
}

#Preview {
    PickerViewBootcamp()
}
