//
//  HomeView.swift
//  instaclone
//
//  Created by Simon Jespersen on 16/05/2022.
//

import SwiftUI

var users = [
    User(accountName: "solan"),
    User(accountName: "maria"),
    User(accountName: "lynda"),
    User(accountName: "kelly"),
    User(accountName: "hekk"),
    User(accountName: "john"),
]

var posts = [
    PostData(user: users[0]),
    PostData(user: users[2]),
    PostData(user: users[3]),
]

var stories = users.map {
    Story(user: $0)
}

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("ITBeginstagram")
                    .font(.title)
                Spacer()
                Image(systemName: "plus.app")
                Image(systemName: "heart")
                Image(systemName: "paperplane")
            }.padding(.horizontal, 8)
            ScrollView {
                VStack(alignment: .center, spacing: 0) {
                    StoryView()
                    Divider()
                    LazyVStack {
                        ForEach(posts) {
                            Post(data: $0)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject({ () -> StoryState in
            let envObj = StoryState()
            envObj.showStory = false
            return envObj
        }())
    }
}

struct StoryView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 10) {
                ForEach(stories) {
                    CircleAvatar(accountName: $0.user.accountName)
                }
            }.padding(.horizontal, 8)
        }
    }
}
