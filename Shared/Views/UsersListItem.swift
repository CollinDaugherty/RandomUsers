//
//  UsersListItem.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UsersListItem: View {
    @ObservedObject var viewModel: UsersListItemViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: viewModel.thumbnail) { image in
                image.resizable()
            } placeholder: {
                Color.gray
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(viewModel.fullName)
                Text(viewModel.email)
            }
        }
    }
}
