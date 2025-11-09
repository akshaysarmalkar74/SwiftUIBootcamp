//
//  GradientShowcaseView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 09/11/25.
//

import SwiftUI

struct GradientShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                
                // MARK: - 1️⃣ Linear Gradient
                SectionView(title: "📏 Linear Gradient") {
                    VStack(spacing: 15) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(
                                LinearGradient(
                                    colors: [.blue, .mint],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(height: 100)
                        
                        Text("Diagonal Gradient Text")
                            .font(.title2.bold())
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.purple, .pink],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    }
                }
                
                // MARK: - 2️⃣ Radial Gradient
                SectionView(title: "🌕 Radial Gradient") {
                    VStack(spacing: 15) {
                        Circle()
                            .fill(
                                RadialGradient(
                                    colors: [.yellow, .orange, .red],
                                    center: .center,
                                    startRadius: 5,
                                    endRadius: 100
                                )
                            )
                            .frame(width: 120, height: 120)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(
                                RadialGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: .mint, location: 0.2),
                                        .init(color: .blue, location: 0.9)
                                    ]),
                                    center: .center,
                                    startRadius: 10,
                                    endRadius: 120
                                )
                            )
                            .frame(height: 100)
                    }
                }
                
                // MARK: - 3️⃣ Angular Gradient
                SectionView(title: "🌀 Angular Gradient") {
                    VStack(spacing: 15) {
                        Circle()
                            .fill(
                                AngularGradient(
                                    colors: [.red, .orange, .yellow, .green, .blue, .purple, .red],
                                    center: .center
                                )
                            )
                            .frame(width: 120, height: 120)
                        
                        Capsule()
                            .fill(
                                AngularGradient(
                                    gradient: Gradient(colors: [.pink, .purple, .indigo, .pink]),
                                    center: .center,
                                    startAngle: .degrees(0),
                                    endAngle: .degrees(360)
                                )
                            )
                            .frame(width: 200, height: 50)
                    }
                }
                
                // MARK: - 4️⃣ Gradient with Stroke
                SectionView(title: "✏️ Gradient Stroke & Border") {
                    Circle()
                        .stroke(
                            LinearGradient(colors: [.mint, .blue], startPoint: .leading, endPoint: .trailing),
                            style: StrokeStyle(lineWidth: 10, lineCap: .round)
                        )
                        .frame(width: 120, height: 120)
                }
                
                // MARK: - 5️⃣ Animated Gradient Example
                SectionView(title: "⚡ Animated Gradient Background") {
                    AnimatedGradientView()
                        .frame(height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding()
        }
        .navigationTitle("SwiftUI Gradients Demo")
    }
}

// MARK: - 🔄 Animated Gradient Background
struct AnimatedGradientView: View {
    @State private var animate = false
    
    var body: some View {
        LinearGradient(
            colors: [.purple, .blue, .mint, .pink],
            startPoint: animate ? .topLeading : .bottomTrailing,
            endPoint: animate ? .bottomTrailing : .topLeading
        )
        .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: animate)
        .onAppear { animate = true }
    }
}

#Preview {
    NavigationStack {
        GradientShowcaseView()
            .preferredColorScheme(.light)
    }
}
