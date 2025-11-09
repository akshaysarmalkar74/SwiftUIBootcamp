//
//  NormalImagesShowcaseView.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 09/11/25.
//

import SwiftUI

struct NormalImagesShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                
                // MARK: - 1️⃣ Asset Image
                SectionView(title: "📦 Asset Catalog Image") {
                    Image("sample_photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)
                        .cornerRadius(12)
                        .shadow(radius: 4)
                        .overlay(Text("From Assets").font(.caption).padding(6), alignment: .bottomTrailing)
                }
                
                // MARK: - 2️⃣ Bundle Image
                SectionView(title: "📁 Bundle Image") {
                    Image("logo", bundle: .main)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .padding()
                }
                
                // MARK: - 3️⃣ Async Remote Image
                SectionView(title: "🌐 AsyncImage (Remote URL)") {
                    AsyncImage(
                        url: URL(string: "https://picsum.photos/300"),
                        content: { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(height: 150)
                                .clipped()
                                .cornerRadius(10)
                        },
                        placeholder: {
                            ProgressView().frame(height: 150)
                        }
                    )
                }
                
                // MARK: - 4️⃣ Image Rendering Modes
                SectionView(title: "🎨 Rendering Modes") {
                    VStack(spacing: 15) {
                        Image("vector_icon")
                            .renderingMode(.original) // Keeps original color
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Image("vector_icon")
                            .renderingMode(.template) // Uses foreground color
                            .resizable()
                            .foregroundStyle(.blue)
                            .frame(width: 60, height: 60)
                    }
                }
                
                // MARK: - 5️⃣ Image Resizing & Scaling
                SectionView(title: "📐 Resizing & Scaling") {
                    HStack(spacing: 20) {
                        Image("sample_photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .border(Color.gray)
                        
                        Image("sample_photo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .border(Color.gray)
                    }
                    Text(".scaledToFit() maintains aspect ratio; .scaledToFill() crops.")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                // MARK: - 6️⃣ Decorative Shapes
                SectionView(title: "🌀 Clip, Overlay & Mask") {
                    ZStack {
                        Image("sample_photo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(.white, lineWidth: 4)
                            )
                            .shadow(radius: 5)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("SwiftUI Normal Images")
    }
}

#Preview {
    NormalImagesShowcaseView()
}
