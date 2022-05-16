//
//  ContentView.swift
//  instaclone
//
//  Created by Simon Jespersen on 15/05/2022.
//

import SwiftUI

private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
private var colors: [Color] = [.yellow, .purple, .green]
private var gridItemLayout = Array(repeating: GridItem(.flexible(), spacing: 0), count: 3)

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        HideableTopView {
            HStack {
                SearchBar(text: $searchText)
            }
        } content: {
            LazyVGrid(columns: gridItemLayout, spacing: 0) {
                ForEach(0 ... 100, id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .background(colors[$0 % colors.count])
                        .padding(1)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
