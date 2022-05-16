//
//  StoryCircle.swift
//  instaclone
//
//  Created by Simon Jespersen on 15/05/2022.
//

import SwiftUI

struct CircleAvatar: View {
    var isFinished: Bool = false
    var showAccountName: Bool = true
    var accountName: String
    var size: CGFloat? = 50

    var body: some View {
        VStack {
            Image(accountName)
                .resizable()
                .frame(width: size, height: size)
                .clipShape(Circle())
                .overlay(Circle().stroke(.background, lineWidth: 2))
                .padding(2)
                .overlay(Circle().stroke(isFinished ? .black : .red, lineWidth: 3))

            if showAccountName {
                Text(accountName)
                    .font(.caption)
            }
        }
        .padding(.vertical)
    }
}

struct StoryCircle_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CircleAvatar(accountName: "jonas")
            CircleAvatar(isFinished: true, accountName: "kaare")
            CircleAvatar(isFinished: true,
                         showAccountName: false, accountName: "kaare")
        }
    }
}
