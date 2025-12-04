//
//  InitsAndEnums.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 04/12/25.
//

import SwiftUI

enum Fruit: CaseIterable {
    case apple
    case banana
    case cherry
    case watermelon
    
    var title: String {
        switch self {
            case .apple:
                return "Apples"
            case .banana:
                return "Bananas"
            case .cherry:
                return "Cherries"
            case .watermelon:
                return "Watermelons"
        }
    }
    
    var bgColor: Color {
        switch self {
            case .apple:
                return .red
            case .banana:
                return .yellow
            case .cherry:
                return .pink
            case .watermelon:
                return .green
        }
    }
}

struct InitsAndEnums: View {
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Inits & Enums", shouldHaveTopPadding: true)
            
            VStack {
                ForEach(Fruit.allCases, id: \.self) { fruit in
                    FruitView(fruit: fruit, count: (2...20).randomElement() ?? 10)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct FruitView: View {
    var fruit: Fruit
    var count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text(fruit.title)
                .font(.title3)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            fruit.bgColor
                .cornerRadius(6)
        )
    }
}

#Preview {
    InitsAndEnums()
}
