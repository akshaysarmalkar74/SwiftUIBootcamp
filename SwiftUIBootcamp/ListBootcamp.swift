//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 09/01/26.
//

import SwiftUI

struct ListBootcamp: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Orange",
        "Mango",
        "Pineapple",
        "Strawberry"
    ]
    
    @State private var veggies = [
        "Tomato",
        "Cucumber",
        "Spinach"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: onDelete)
                    .onMove(perform: onMove)
                } header: {
                    Text("Fruits")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                    }
                } header: {
                    Text("Veggies")
                        .font(.headline)
                        .fontWeight(.bold)
                }

            }
            .navigationTitle("List Bootcamp")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        fruits.append("Watermelon")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    private func onDelete(offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    private func onMove(offsets: IndexSet, destinationIndex: Int) {
        fruits.move(fromOffsets: offsets, toOffset: destinationIndex)
    }
}

#Preview {
    ListBootcamp()
}
