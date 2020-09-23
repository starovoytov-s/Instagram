//
//  Models.swift
//  Instagram
//
//  Created by Stanislav Starovoytov on 23.09.2020.
//

import Foundation



enum Gender {
    case male, female, other
}




struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let bithDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
    
}

struct UserCount {
    let folowers: Int
    let folowing: Int
    let posts: Int
}


public enum UserPostType {
    case photo, video
}

/// Represents a uset post
public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL // video or photo
    let caption: String?
    let likeCount: [PostLikes]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
}

struct PostLikes {
    let username: String
    let postIdentifier: String
}

struct CommentLikes {
    let username: String
    let commentIdentifier: String
}


struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLikes]
}
