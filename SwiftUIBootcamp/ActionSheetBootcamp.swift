//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 11/01/26.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State private var showActionSheet = false
    @State private var actionSheetType: ActionSheetType? = .otherPost
    
    enum ActionSheetType {
        case myPost
        case otherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 40, height: 40)
                
                Text("akshaysarmalkar")
                    .font(.headline)
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(Color.black)
                        .frame(width: 30, height: 30)
                }
                .actionSheet(isPresented: $showActionSheet, content: getActionSheetContent)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(contentMode: .fit)
        }
    }
    
    private func getActionSheetContent() -> ActionSheet {
        let shareBtn: ActionSheet.Button = .default(Text("Share"))
        let reportBtn: ActionSheet.Button = .destructive(Text("Report"))
        let deleteBtn: ActionSheet.Button = .destructive(Text("Delete"))

        return ActionSheet(
            title: Text("Perform Action"),
            message: Text("Choose any action"),
            buttons: actionSheetType == .myPost ? [shareBtn, deleteBtn] : [shareBtn, reportBtn]
        )
    }
}

#Preview {
    ActionSheetBootcamp()
}
