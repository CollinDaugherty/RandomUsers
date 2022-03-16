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
            AsyncImage(url: viewModel.photo) { image in
                image.resizable()
            } placeholder: {
                Color.gray
            }
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .matchedGeometryEffect(id: "\(viewModel.id)-photo", in: namespace)
            
            VStack() {
                Text(viewModel.fullName)
                    .font(.headline)
                    .lineLimit(1)
                    .minimumScaleFactor(0.01)
                Text(viewModel.email)
                    .font(.subheadline)
                    .lineLimit(1)
                    .minimumScaleFactor(0.01)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
        }
        .background(Color(.secondarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .matchedGeometryEffect(id: "\(viewModel.id)-item", in: namespace)
    }
}
