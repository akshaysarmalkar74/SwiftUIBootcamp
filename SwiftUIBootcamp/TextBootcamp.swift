//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/12/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack {
            TitleView(title: "Text Bootcamp", shouldHaveTopPadding: true)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Divider()
                    
                    VStack {
                        TitleView(title: "Font Sizes", font: .headline, shouldHaveTopPadding: false)
                        
                        VStack(spacing: 12) {
                            Text("Heading")
                                .font(.largeTitle)
                            
                            Text("Heading")
                                .font(.title)
                            
                            Text("Heading")
                                .font(.title2)
                            
                            Text("Heading")
                                .font(.title3)
                            
                            Text("Heading")
                                .font(.headline)
                            
                            Text("Heading")
                                .font(.subheadline)
                            
                            Text("Heading")
                                .font(.body)
                            
                            Text("Heading")
                                .font(.caption)
                            
                            Text("Heading")
                                .font(.callout)
                            
                            Text("Heading")
                                .font(.footnote)
                            
                            Text("Heading")
                                .font(.system(size: 20))
                        }
                        
                        
                    }
                    
                    Divider()
                    
                    VStack {
                        TitleView(title: "Font Weights", font: .headline, shouldHaveTopPadding: false)
                        
                        VStack(spacing: 12) {
                            Text("Weight")
                                .fontWeight(.black)
                            
                            Text("Weight")
                                .fontWeight(.bold)
                            
                            Text("Weight")
                                .fontWeight(.heavy)
                            
                            Text("Weight")
                                .fontWeight(.semibold)
                            
                            Text("Weight")
                                .fontWeight(.medium)
                            
                            Text("Weight")
                                .fontWeight(.regular)
                            
                            Text("Weight")
                                .fontWeight(.light)
                            
                            Text("Weight")
                                .fontWeight(.ultraLight)
                        }
                    }
                    
                    Divider()
                    
                    VStack {
                        TitleView(title: "Font Family", font: .headline, shouldHaveTopPadding: false)
                        
                        VStack(spacing: 12) {
                            Text("Design")
                                .fontDesign(.default)
                            
                            Text("Design")
                                .fontDesign(.monospaced)
                            
                            Text("Design")
                                .fontDesign(.rounded)
                            
                            Text("Design")
                                .fontDesign(.serif)
                        }
                        .font(.headline)
                        .fontWeight(.semibold)
                    }
                    
                    Divider()
                    
                    VStack {
                        TitleView(title: "Other Modifiers", font: .headline, shouldHaveTopPadding: false)
                        
                        VStack(spacing: 12) {
                            Text("Bold Text")
                                .bold()
                            
                            Text("Underline Text")
                                .underline()
                            
                            Text("Italic Text")
                                .italic()
                            
                            Text("Strike Through")
                                .strikethrough()
                            
                            Text("Foreground Color")
                                .foregroundStyle(.red)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .minimumScaleFactor(0.5)
                                .frame(width: 300, height: 100)
                        }
                    }
                    
                    Divider()
                    
                    VStack(spacing: 12) {
                        TitleView(title: "Spacing Modifiers", font: .headline, shouldHaveTopPadding: false)
                        
                        VStack(spacing: 12) {
                            Text("Kerning")
                                .kerning(10)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .baselineOffset(8)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .frame(width: .infinity)
    }
}

#Preview {
    TextBootcamp()
}
