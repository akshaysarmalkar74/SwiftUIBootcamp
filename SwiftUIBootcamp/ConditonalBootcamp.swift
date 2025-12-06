//
//  ConditonalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/12/25.
//

import SwiftUI

enum ShapeType {
    case circle
    case square
    
    var title: String {
        switch self {
            case .circle:
                return "Circle"
            case .square:
                return "Square"
        }
    }
}

struct ConditonalBootcamp: View {
    @State private var showCircle: Bool = false
    @State private var showSquare: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Conditional Bootcamp", shouldHaveTopPadding: true)
            
            VStack(spacing: 20) {
                HStack {
                    ShapeButtonView(isSelected: $showCircle, shapeType: .circle)
                    ShapeButtonView(isSelected: $showSquare, shapeType: .square)
                }
                
                if showCircle {
                    Circle()
                        .fill(Color.accent)
                        .frame(width: 100, height: 100)
                }
                
                if showSquare {
                    Rectangle()
                        .fill(Color.main)
                        .frame(width: 100, height: 100)
                }
                
                if showCircle && showSquare {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.pink)
                        .frame(width: 270, height: 200)
                }
            }
            
            Spacer()
        }
    }
}

struct ShapeButtonView: View {
    @Binding var isSelected: Bool
    let shapeType: ShapeType
    
    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            Text("Show \(shapeType.title): \(isSelected ? "Yes" : "No")")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .background(
                    Color.accent.cornerRadius(10)
                )
        }
    }
}

#Preview {
    ConditonalBootcamp()
}
