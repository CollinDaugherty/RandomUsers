//
//  ContentView.swift
//  Shared
//
//  Created by Collin Daugherty on 3/15/22.
//

import SwiftUI

struct UserCollection: View {
    @ObservedObject private var viewModel = UserCollectionViewModel()
    @State private var displayGrid: Bool = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.users.isEmpty {
                    ProgressView()
                } else {
                    if displayGrid {
                        UserGrid(users: viewModel.users)
                    } else {
                        UserList(users: viewModel.users)
                    }
                }
            }
            .task {
                await viewModel.loadData()
            }
            .navigationTitle("Random Users")
            .navigationBarItems(trailing: Button(action: {
                self.displayGrid.toggle()
            }, label: {
                Image(systemName: self.displayGrid == true ? "rectangle.grid.1x2.fill" : "square.grid.2x2.fill")
                    .foregroundColor(Color(.label))
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserCollection()
    }
}
