//
//  UserGridItem.swift
//  RandomUsers
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UsersGridItem: View {
    @ObservedObject var viewModel: UsersListItemViewModel
    let namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 0) {
            UserPhoto(id: viewModel.id, url: viewModel.photo, namespace: namespace)
                .frame(maxWidth: .infinity)
            
            UserInfo(fullName: viewModel.fullName, email: viewModel.email, alignment: .center)
                .padding()
        }
        .background(Color(.secondarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .matchedGeometryEffect(id: "\(viewModel.id)-item", in: namespace)
    }
}
