//
//  ContentView.swift
//  instaclone
//
//  Created by Simon Jespersen on 15/05/2022.
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

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 10) {
                        ForEach(stories) {
                            CircleAvatar(accountName: $0.user.accountName)
                        }
                    }
                    .padding(.horizontal)
                }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
