//
//  SystemImagesShowcaseView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 09/11/25.
//

import SwiftUI

struct SystemImagesShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                
                // MARK: - 1️⃣ Basic Icons
                SectionView(title: "🧩 Basic System Images") {
                    HStack(spacing: 20) {
                        Image(systemName: "star")
                        Image(systemName: "heart")
                        Image(systemName: "paperplane")
                        Image(systemName: "bell.fill")
                    }
                    .font(.title)
                }
                
                // MARK: - 2️⃣ Font & Weight
                SectionView(title: "🔠 Font & Weight") {
                    VStack(spacing: 15) {
                        HStack(spacing: 20) {
                            Image(systemName: "bolt.fill").font(.title3)
                            Image(systemName: "bolt.fill").font(.title)
                            Image(systemName: "bolt.fill").font(.largeTitle)
                        }
                        HStack(spacing: 20) {
                            Image(systemName: "bolt.fill").font(.system(size: 40, weight: .light))
                            Image(systemName: "bolt.fill").font(.system(size: 40, weight: .regular))
                            Image(systemName: "bolt.fill").font(.system(size: 40, weight: .bold))
                        }
                    }
                }
                
                // MARK: - 3️⃣ Rendering Modes
                SectionView(title: "🎨 Rendering Modes") {
                    VStack(spacing: 15) {
                        HStack(spacing: 20) {
                            Image(systemName: "leaf.fill")
                                .symbolRenderingMode(.monochrome)
                                .foregroundStyle(.green)
                            Image(systemName: "leaf.fill")
                                .symbolRenderingMode(.hierarchical)
                                .foregroundStyle(.green)
                            Image(systemName: "leaf.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.green, .mint)
                            Image(systemName: "leaf.fill")
                                .symbolRenderingMode(.multicolor)
                        }
                        .font(.system(size: 40))
                    }
                }
                
                // MARK: - 4️⃣ Background & Styling
                SectionView(title: "🌈 Styling & Composition") {
                    HStack(spacing: 20) {
                        Image(systemName: "sun.max.fill")
                            .font(.system(size: 40))
                            .symbolRenderingMode(.multicolor)
                        
                        Image(systemName: "cloud.sun.fill")
                            .font(.system(size: 40))
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.orange)
                        
                        Image(systemName: "moon.stars.fill")
                            .font(.system(size: 40))
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.indigo, .yellow)
                    }
                }
                
                // MARK: - 5️⃣ Animation Example
                SectionView(title: "⚡ Animated System Icon") {
                    AnimatedSystemIcon()
                        .frame(width: 80, height: 80)
                }
                
                // MARK: - 6️⃣ Accessibility Example
                SectionView(title: "♿ Accessibility & Labels") {
                    HStack(spacing: 20) {
                        Image(systemName: "heart.fill")
                            .accessibilityLabel("Favorite")
                        Image(systemName: "trash")
                            .accessibilityLabel("Delete")
                        Image(systemName: "paperplane")
                            .accessibilityLabel("Send Message")
                    }
                    .font(.largeTitle)
                }
            }
            .padding()
        }
        .navigationTitle("SwiftUI System Images")
    }
}

// MARK: - Animated Example
struct AnimatedSystemIcon: View {
    @State private var rotate = false
    var body: some View {
        Image(systemName: "arrow.2.circlepath")
            .font(.system(size: 50, weight: .bold))
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.blue)
            .rotationEffect(.degrees(rotate ? 360 : 0))
            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: rotate)
            .onAppear { rotate = true }
    }
}

#Preview {
    NavigationStack {
        SystemImagesShowcaseView()
    }
}
