//
//  UsersListItemViewModel.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import Foundation

class UsersListItemViewModel: ObservableObject {
    @Published var fullName: String
    @Published var email: String
    @Published var thumbnail: URL
    
    init(user: User) {
        self.fullName = "\(user.name.first) \(user.name.last)"
        self.email = user.email
        self.thumbnail = URL(string: user.picture.thumbnail)!
    }
}
