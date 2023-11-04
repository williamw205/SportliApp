//
//  MainTabView.swift
//  Sportli SwiftUI App
//
//  Created by William Wong on 11/2/23.
//

import SwiftUI

struct MainTabView: View {
    @State var currentTab: Tab = .home
    
    @State private var selectedIndex = 0
    
    var body: some View {
    
        VStack {
            TabView(selection: $currentTab) {
                
                FeedView()
                    .tag(Tab.home)
                
                SearchView()
                    .tag(Tab.search)
                
                EventsView()
                    .tag(Tab.events)
                
                LeaderboardView()
                    .tag(Tab.leaderboard)
                
                MessagesView()
                    .tag(Tab.messages)
            }
            CustomTabBar(currentTab: $currentTab)
        }
    }
}

#Preview {
    MainTabView()
}

