//
//  ShapeShowcaseView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/11/25.
//

import SwiftUI

struct ShapeShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                
                // MARK: - 1️⃣ Basic Shapes
                VStack {
                    Text("🟦 Basic Shapes").font(.headline)
                    
                    HStack(spacing: 20) {
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 80, height: 80)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.green)
                            .frame(width: 80, height: 80)
                        
                        Circle()
                            .fill(.orange)
                            .frame(width: 80, height: 80)
                        
                        Ellipse()
                            .fill(.pink)
                            .frame(width: 100, height: 60)
                    }
                }
                
                // MARK: - 2️⃣ Stroke & Styling
                VStack {
                    Text("✏️ Stroke, Line Width & Dash").font(.headline)
                    
                    HStack(spacing: 20) {
                        Circle()
                            .stroke(.blue, lineWidth: 4)
                            .frame(width: 80, height: 80)
                        
                        RoundedRectangle(cornerRadius: 25)
                            .strokeBorder(.green, style: StrokeStyle(lineWidth: 6, dash: [10, 5]))
                            .frame(width: 100, height: 80)
                        
                        Capsule()
                            .stroke(.red, style: StrokeStyle(lineWidth: 3, lineCap: .round, dash: [5, 3]))
                            .frame(width: 100, height: 50)
                    }
                }
                
                // MARK: - 3️⃣ Fill & Gradient
                VStack {
                    Text("🎨 Fill Styles").font(.headline)
                    
                    HStack(spacing: 20) {
                        Circle()
                            .fill(.linearGradient(colors: [.pink, .orange], startPoint: .top, endPoint: .bottom))
                            .frame(width: 80, height: 80)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.radialGradient(colors: [.blue, .mint], center: .center, startRadius: 10, endRadius: 60))
                            .frame(width: 80, height: 80)
                        
                        
                        Capsule()
                            .fill(AngularGradient(colors: [.purple, .blue, .mint], center: .center))
                            .frame(width: 80, height: 80)
                    }
                }
                
                // MARK: - 4️⃣ Trim & Animation
                VStack {
                    Text("🌀 Trim and Animation").font(.headline)
                    
                    AnimatedArcShape()
                        .frame(width: 100, height: 100)
                }
                
                // MARK: - 5️⃣ Custom Path Shape
                VStack {
                    Text("🧩 Custom Shape with Path").font(.headline)
                    
                    Triangle()
                        .fill(.teal)
                        .frame(width: 100, height: 100)
                }
            }
            .padding()
        }
        .navigationTitle("SwiftUI Shapes Demo")
    }
}

// MARK: - 🔺 Custom Shape
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

// MARK: - 🔄 Animated Shape Example
struct AnimatedArcShape: View {
    @State private var progress: CGFloat = 0.25
    
    var body: some View {
        Circle()
            .trim(from: 0, to: progress)
            .animation(.easeInOut(duration: 1.2).repeatForever(autoreverses: true), value: progress)
            .onAppear {
                progress = 1.0
            }
        
        Circle()
            .trim(from: 0, to: progress)
            .stroke(.blue, lineWidth: 5)
            .rotationEffect(.degrees(-90))
            .animation(.easeInOut(duration: 1.2).repeatForever(autoreverses: true), value: progress)
            .onAppear {
                progress = 1.0
            }
    }
}

#Preview {
    NavigationStack {
        ShapeShowcaseView()
    }
}
