//
//  User.swift
//  Shared
//
//  Created by Collin Daugherty on 3/15/22.
//

import Foundation

struct Result: Codable {
    let results: [User]
}

struct User: Codable, Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.login.uuid == rhs.login.uuid
    }
    
    let login: Login
    let name: Name
    let email: String
    let picture: Picture
}

struct Login: Codable, Hashable {
    let uuid: String
}

struct Name: Codable, Hashable {
    let title, first, last: String
}

struct Picture: Codable, Hashable {
    let large, medium, thumbnail: String
}

