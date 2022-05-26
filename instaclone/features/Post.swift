//
//  Post.swift
//  instaclone
//
//  Created by Simon Jespersen on 15/05/2022.
//

import SwiftUI

struct Post: View {
    var data: PostData

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                CircleAvatar(showAccountName: false, accountName: data.user.accountName, size: 30)
                Text(data.user.accountName)
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
                    .imageScale(.large)
            }
            .padding(.horizontal, 8)

            AsyncImage(url: URL(string: data.url))
                .frame(height: 300)

            HStack(spacing: 8) {
                Image(systemName: "heart")
                    .imageScale(.large)
                Image(systemName: "bubble.right")
                    .imageScale(.large)
                Image(systemName: "paperplane")
                    .imageScale(.large)
                Spacer()
                Image(systemName: "bookmark")
                    .imageScale(.large)
            }
            .padding(8)
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(data: PostData(user: User(accountName: "hekk")))
    }
}
