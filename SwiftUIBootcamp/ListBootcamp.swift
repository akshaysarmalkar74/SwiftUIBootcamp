//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 10/12/25.
//

import SwiftUI

struct ListBootcamp: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Orange",
        "Pineapple",
        "Strawberry",
        "Mango"
    ]
    
    @State private var vegetables = [
        "Carrots",
        "Broccoli",
        "Spinach",
        "Kale",
        "Zucchini",
        "Eggplant"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onMove(perform: moveFruits)
                    .onDelete(perform: deleteFruits)
                }
                
                Section("Vegetables") {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable)
                    }
                }
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("List Bootcamp")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
    
    private func deleteFruits(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    private func moveFruits(fromOffsets: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

#Preview {
    ListBootcamp()
}
