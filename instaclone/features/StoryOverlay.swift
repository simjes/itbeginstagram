//
//  StoryView.swift
//  instaclone
//
//  Created by Simon Jespersen on 26/05/2022.
//

import SwiftUI

struct StoryOverlay: View {
    @EnvironmentObject var storyState: StoryState

    var body: some View {
        if storyState.showStory {
            VStack {
                Spacer()
                AsyncImage(url: URL(string: "https://picsum.photos/400/300"))
                    .frame(height: 300)
                Spacer()
            }

            .overlay(
                Button(action: {
                    withAnimation {
                        storyState.showStory = false
                    }
                }, label: {
                    Image(systemName: "xmark")
                })
                .padding(),
                alignment: .topTrailing
            ).background(Color.black)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryOverlay().environmentObject({ () -> StoryState in
            let envObj = StoryState()
            envObj.showStory = true
            return envObj
        }())
    }
}
