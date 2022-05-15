//
//  structs.swift
//  instaclone
//
//  Created by Simon Jespersen on 15/05/2022.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let accountName: String
}

struct Story: Identifiable {
    let id = UUID()
    let user: User
}

struct PostData: Identifiable {
    let id = UUID()
    let user: User
    let url = "https://picsum.photos/400/300"
}
