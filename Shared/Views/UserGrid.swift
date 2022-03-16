//
//  UserGrid.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UserGrid: View {
    var users: [User]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem](repeating: GridItem(.adaptive(minimum: 175, maximum: 200)), count: 2)) {
                ForEach(users, id: \.login.uuid) { user in
                    UsersGridItem(viewModel: UsersListItemViewModel(user: user))
                }
            }
            .padding(.horizontal)
        }
        .background(Color(.systemGroupedBackground))
    }
}
