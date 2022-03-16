//
//  UserList.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UserList: View {
    var users: [User]
    
    var body: some View {
        List {
            ForEach(users, id: \.login.uuid) { user in
                UsersListItem(viewModel: UsersListItemViewModel(user: user))
            }
        }
    }
}
