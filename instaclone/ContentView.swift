//
//  ContentView.swift
//  instaclone
//
//  Created by Simon Jespersen on 15/05/2022.
//

import SwiftUI

var posts = [
    User(accountName: "hekk"),
    User(accountName: "maria"),
    User(accountName: "solan"),
]

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 10) {
                        CircleAvatar(accountName: "solan")
                        CircleAvatar(accountName: "maria")
                        CircleAvatar(accountName: "lynda")
                        CircleAvatar(accountName: "kelly")
                        CircleAvatar(accountName: "hekk")
                        CircleAvatar(isFinished: true, accountName: "john")
                    }.padding(.horizontal)
                }
                Divider()
                LazyVStack {
                    ForEach(posts) {
                        Post(accountName: $0.accountName)
                    }
                }
                Spacer()
                Text("Hello, world!")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct User: Identifiable {
    let id = UUID()
    let accountName: String
}
