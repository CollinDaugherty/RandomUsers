//
//  UsersListItem.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UsersListItem: View {
    @ObservedObject var viewModel: UsersListItemViewModel
    let namespace: Namespace.ID
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: viewModel.thumbnail) { image in
                image.resizable()
            } placeholder: {
                Color.gray
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .matchedGeometryEffect(id: "\(viewModel.id)-photo", in: namespace)
            
            VStack(alignment: .leading) {
                Text(viewModel.fullName)
                    .font(.headline)
                Text(viewModel.email)
                    .font(.subheadline)
                    .foregroundColor(Color(.secondaryLabel))
            }
        }
        .matchedGeometryEffect(id: "\(viewModel.id)-item", in: namespace)
    }
}
