//
//  BackgroundAndOverlay.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 03/12/25.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        VStack {
            TitleView(title: "Backgrounds & Overlays", shouldHaveTopPadding: true)
            
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.white)
                .frame(width: 40, height: 40)
                .padding(25)
                .background(
                    LinearGradient(
                        colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .clipShape(
                        Circle()
                    )
                )
                .shadow(color: Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), radius: 8)
                .overlay(alignment: .bottomTrailing) {
                    Text("6")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(9)
                        .background(
                            Color.black
                                .clipShape(Circle())
                        )
                }
        }
    }
}

#Preview {
    BackgroundAndOverlay()
}
