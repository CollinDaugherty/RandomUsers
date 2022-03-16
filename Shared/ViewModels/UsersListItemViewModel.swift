//
//  UsersListItemViewModel.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import Foundation

class UsersListItemViewModel: ObservableObject {
    @Published var id: String
    @Published var fullName: String
    @Published var email: String
    @Published var thumbnail: URL
    @Published var photo: URL
    
    init(user: User) {
        self.id = user.login.uuid
        self.fullName = "\(user.name.first) \(user.name.last)"
        self.email = user.email
        self.thumbnail = URL(string: user.picture.thumbnail)!
        self.photo = URL(string: user.picture.large)!
    }
}
