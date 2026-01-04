//
//  InitAndEnums.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 04/01/26.
//

import SwiftUI

enum Fruit: CaseIterable {
    case apple
    case banana
    case orange
    
    var name: String {
        switch self {
            case .apple:
                return "Apples"
            case .banana:
                return "Bananas"
            case .orange:
                return "Oranges"
        }
    }
    
    var bgColor: Color {
        switch self {
            case .apple:
                return .red
            case .banana:
                return .yellow
            case .orange:
                return .orange
        }
    }
    
    var txtColor: Color {
        switch self {
            case .apple:
                return .white
            case .banana:
                return .black
            case .orange:
                return .white
        }
    }
}

struct InitAndEnums: View {
    var body: some View {
        Text("Init & Enums")
            .font(.largeTitle)
            .fontWeight(.bold)
        
        VStack(spacing: 16) {
            ForEach(Fruit.allCases, id: \.self) { fruit in
                FruitView(fruit: fruit, count: Int.random(in: 2...100))
            }
        }
    }
}

struct FruitView: View {
    var fruit: Fruit
    var count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.title)
            
            Text(fruit.name)
                .font(.headline)
        }
        .fontWeight(.bold)
        .foregroundStyle(fruit.txtColor)
        .padding(30)
        .background(
            fruit.bgColor
                .cornerRadius(8)
        )
    }
}

#Preview {
    InitAndEnums()
}
