//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 11/12/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State private var isPresented: Bool = false
    @State private var actionSheetType = ActionSheetType.myPost
    
    enum ActionSheetType {
        case myPost
        case otherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 44, height: 44)
                
                Text("akshaysarmalkar")
                    .font(.headline)
                
                Spacer()
                
                Button {
                    isPresented.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                }
                .actionSheet(isPresented: $isPresented) {
                    let otherPostButtons: [ActionSheet.Button] = [
                        .default(Text("Share")),
                        .destructive(Text("Report")),
                        .cancel()
                    ]
                    
                    let myPostButtons: [ActionSheet.Button] = [
                        .default(Text("Share")),
                        .destructive(Text("Delete")),
                        .cancel()
                    ]
                    
                    let actionSheet = ActionSheet(
                        title: Text("Actions"),
                        buttons: actionSheetType == .myPost ? myPostButtons : otherPostButtons
                    )
                    
                    return actionSheet
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
