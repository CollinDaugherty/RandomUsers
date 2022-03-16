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
            UserPhoto(id: viewModel.id, url: viewModel.photo, namespace: namespace)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            UserInfo(fullName: viewModel.fullName, email: viewModel.email)
        }
        .matchedGeometryEffect(id: "\(viewModel.id)-item", in: namespace)
    }
}
