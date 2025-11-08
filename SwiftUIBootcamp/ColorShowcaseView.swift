//
//  ColorShowcaseView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/11/25.
//

import SwiftUI

struct ColorShowcaseView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                
                // MARK: - 1️⃣ Fixed Colors
                SectionView(title: "🎨 Fixed System Colors") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach([Color.red, .green, .blue, .orange, .purple, .pink, .gray], id: \.self) { color in
                                Circle().fill(color).frame(width: 50, height: 50)
                            }
                        }
                    }
                }
                
                // MARK: - 2️⃣ Adaptive Semantic Colors
                SectionView(title: "🌓 Semantic Colors (Auto Adapt)") {
                    VStack(spacing: 12) {
                        Text("Primary Text").foregroundColor(.primary)
                        Text("Secondary Text").foregroundColor(.secondary)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.background)
                            .overlay(Text("Background").foregroundColor(.primary))
                            .frame(height: 60)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.accent)
                            .overlay(Text("Accent Color").foregroundColor(.white))
                            .frame(height: 60)
                    }
                }
                
                // MARK: - 3️⃣ Asset Catalog Colors
                SectionView(title: "🎨 Named Colors from Assets") {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("BrandColor"))
                        .frame(height: 80)
                        .overlay(Text("Color(\"BrandColor\") from Assets").foregroundColor(.white))
                }
                
                // MARK: - 4️⃣ Custom Colors
                SectionView(title: "🔧 Custom RGB / HSB") {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(red: 0.2, green: 0.6, blue: 0.8))
                        .frame(height: 80)
                        .overlay(Text("RGB(0.2, 0.6, 0.8)").foregroundColor(.white))
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(hue: 0.5, saturation: 0.8, brightness: 0.9))
                        .frame(height: 80)
                        .overlay(Text("HSB(0.5, 0.8, 0.9)").foregroundColor(.white))
                }
                
                // MARK: - 5️⃣ Material Backgrounds
                SectionView(title: "💎 Material Colors (iOS 15+)") {
                    ZStack {
                        Image(systemName: "photo.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .clipped()
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.ultraThinMaterial)
                            .overlay(Text(".ultraThinMaterial").bold())
                            .frame(height: 60)
                            .padding()
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                // MARK: - 6️⃣ Dynamic Light/Dark Preview
                SectionView(title: "🌓 Color Scheme Aware") {
                    Text("Current Mode: \(colorScheme == .dark ? "🌑 Dark" : "☀️ Light")")
                        .font(.headline)
                }
            }
            .padding()
        }
        .navigationTitle("SwiftUI Colors Demo")
    }
}


#Preview {
    ColorShowcaseView()
}
