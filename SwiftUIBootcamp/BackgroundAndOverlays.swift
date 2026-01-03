//
//  BackgroundAndOverlays.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 03/01/26.
//

import SwiftUI

struct BackgroundAndOverlays: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Background & Overlays")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .foregroundStyle(Color.white)
                .frame(width: 100, height: 100)
                .background(
                    LinearGradient(
                        colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .clipShape(Circle())
                )
                .overlay(alignment: .bottomTrailing) {
                    Text("5")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .frame(width: 30, height: 30)
                        .background(
                            Circle()
                                .fill(Color.red)
                        )
                }
                .shadow(color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)).opacity(0.7), radius: 20)
        }
    }
}

#Preview {
    BackgroundAndOverlays()
}
