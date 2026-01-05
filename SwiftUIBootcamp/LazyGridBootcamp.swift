//
//  LazyGridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 05/01/26.
//

import SwiftUI

struct LazyGridBootcamp: View {
    private var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        VStack {
            Text("Lazy Grid Bootcamp")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            ScrollView {
                HStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        HStack {
                            Text("akshay732")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Image(systemName: "checkmark.seal.fill")
                                .renderingMode(.template)
                                .foregroundStyle(Color.blue)
                        }
                        
                        Text("Akshay Sarmalkar")
                            .font(.headline)
                            .fontWeight(.regular)
                        
                        Text("SDE")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(100..<110, id: \.self) { _ in
                            Circle()
                                .frame(width: 80, height: 80)
                        }
                        
                        Spacer(minLength: 20)
                    }
                }
                .padding(.leading)

                
                LazyVGrid(columns: columns, spacing: 1, pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(1..<50, id: \.self) { number in
                            Rectangle()
                                .frame(height: 180)
                        }
                    } header: {
                        Text("Section Header 1")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .background(Color(.systemGray6))
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                    }
                    
                    Section {
                        ForEach(50..<100, id: \.self) { number in
                            Rectangle()
                                .frame(height: 180)
                        }
                    } header: {
                        Text("Section Header 2")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .background(Color(.systemGray6))
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyGridBootcamp()
}
