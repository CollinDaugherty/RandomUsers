//
//  ContentView.swift
//  Shared
//
//  Created by Collin Daugherty on 3/15/22.
//

import SwiftUI

struct UserList: View {
    @ObservedObject private var viewModel = UserListViewModel()
    
    var body: some View {
        VStack {
            if viewModel.users.isEmpty {
                ProgressView()
            } else {
                List {
                    ForEach(viewModel.users, id: \.self) { user in
                        Text(user.email)
                    }
                }
            }
        }
        .task {
            await viewModel.loadData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
