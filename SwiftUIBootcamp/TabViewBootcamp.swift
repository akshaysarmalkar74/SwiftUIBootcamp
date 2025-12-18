//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 18/12/25.
//

import SwiftUI

enum AppTabs: Int {
    case feed, browse, profile, search
    
    var image: String {
        switch self {
            case .feed: return "house"
            case .browse: return "globe" // "magnifyingglass"
            case .profile: return "person"
            case .search: return "magnifyingglass"
        }
    }
    
    var title: String {
        switch self {
            case .feed: return "Feed"
            case .browse: return "Browse"
            case .profile: return "Profile"
            case .search: return "Search"
        }
    }
}

struct TabViewBootcamp: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(
                AppTabs.feed.title,
                systemImage: AppTabs.feed.image,
                value: AppTabs.feed.rawValue
            ) {
                FeedController(selectedTab: $selectedTab)
            }
            
            Tab(
                AppTabs.browse.title,
                systemImage: AppTabs.browse.image,
                value: AppTabs.browse.rawValue
            ) {
                Text("Browser Controller")
            }
            
            Tab(
                AppTabs.profile.title,
                systemImage: AppTabs.profile.image,
                value: AppTabs.profile.rawValue
            ) {
                Text("Profile Controller")
            }
            
            Tab(
                AppTabs.search.title,
                systemImage: AppTabs.search.image,
                value: AppTabs.search.rawValue,
                role: .search) {
                    Text("Search Controller")
                }
        }
    }
}

struct FeedController: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        Button {
            selectedTab = AppTabs.search.rawValue
        } label: {
            Text("Go to Search")
                .foregroundStyle(Color.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .background(
                    Color.cyan
                        .cornerRadius(10)
                )
        }
    }
}

#Preview {
    TabViewBootcamp()
}
