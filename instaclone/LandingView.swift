//
//  TabView.swift
//  instaclone
//
//  Created by Simon Jespersen on 16/05/2022.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
            ReelsView()
                .tabItem {
                    Label("", systemImage: "play.square")
                }
            ShopView()
                .tabItem {
                    Label("", systemImage: "bag")
                }
            ProfileView()
                .tabItem {
                    Label("", systemImage: "person.crop.circle")
                }
        }
        .overlay(StoryOverlay())
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().environmentObject({ () -> StoryState in
            let envObj = StoryState()
            envObj.showStory = false
            return envObj
        }())
    }
}
