//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 01/11/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {
                
                // MARK: - 1️⃣ FONT & WEIGHT
                SectionView(title: "🎯 Font & Weight") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Default Font")
                        Text("Title Font").font(.title)
                        Text("Custom Font Size 24").font(.system(size: 24))
                        Text("Bold Text").bold()
                        Text("Semibold Weight").fontWeight(.semibold)
                        Text("Italic Text").italic()
                        Text("Monospaced Font").monospaced()
                        Text("Rounded Design").font(.system(.title, design: .rounded))
                    }
                }
                
                // MARK: - 2️⃣ COLOR & EMPHASIS
                SectionView(title: "🎨 Color & Emphasis") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Foreground Color").foregroundColor(.blue)
                        Text("Foreground Style").foregroundStyle(.linearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
                        Text("Secondary Style").foregroundStyle(.secondary)
                        Text("Opacity 0.5").opacity(0.5)
                    }
                }
                
                // MARK: - 3️⃣ DECORATION
                SectionView(title: "✨ Decoration") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Underlined Text")
                            .underline(true, color: .blue)
                        Text("Strikethrough Text")
                            .strikethrough(true, color: .red)
                        Text("Combined Styles")
                            .underline(true, color: .blue)
                            .strikethrough(true, color: .red)
                        Text("Small Caps")
                            .textCase(.uppercase)
                    }
                }
                
                // MARK: - 4️⃣ SPACING
                SectionView(title: "🔤 Spacing Modifiers") {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Kerning (No whitespace effect)")
                            .kerning(5)
                            .border(Color.gray)
                        Text("Tracking (Includes whitespace)")
                            .tracking(0.5)
                            .border(Color.gray)
                        HStack(alignment: .firstTextBaseline, spacing: 5) {
                            Text("Base")
                            Text("↑Up").baselineOffset(8).foregroundColor(.blue)
                            Text("↓Down").baselineOffset(-8).foregroundColor(.red)
                        }
                        Text("Line Spacing:\nSwiftUI makes\nUIs declarative.")
                            .lineSpacing(12)
                            .border(.gray)
                    }
                }
                
                // MARK: - 5️⃣ LAYOUT & SCALING
                SectionView(title: "📐 Layout & Scaling") {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("This text is limited to 1 line only")
                            .lineLimit(1)
                            .border(.gray)
                        
                        Text("This is a long line of text that will be truncated after one line")
                            .lineLimit(1)
                            .truncationMode(.tail)
                            .border(.gray)
                        
                        Text("Multiline\nCentered Text\nExample")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: 200, alignment: .center)
                            .border(.gray)
                        
                        Text("Scaling Down Example")
                            .font(.largeTitle)
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                            .frame(width: 150)
                            .border(.gray)
                        
                        Text("Fixed Size Text — avoids truncation and wraps properly in VStack layout")
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 150)
                            .border(.gray)
                    }
                }
                
                // MARK: - 6️⃣ DYNAMIC / MISCELLANEOUS
                SectionView(title: "⚙️ Dynamic & Miscellaneous") {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Date Formatting: \(Date.now, style: .time)")
                            .font(.headline)
                        Text("Markdown Support: **Bold** and _Italic_ in one line.")
                            .font(.body)
                        Text("Text Selection Enabled")
                            .textSelection(.enabled)
                        Text("Transition Example")
                            .contentTransition(.interpolate)
                            .font(.title3)
                    }
                }
                
            }
            .padding()
        }
        .navigationTitle("Text Modifiers Demo")
    }
}

#Preview {
    NavigationStack {
        TextBootcamp()
    }
}
