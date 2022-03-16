//
//  UserPhoto.swift
//  RandomUsers (iOS)
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UserPhoto: View {
    var id: String
    var url: URL
    var namespace: Namespace.ID
    
    var body: some View {
        AsyncImage(url: url) { image in
            image.resizable()
        } placeholder: {
            Color.gray
        }
        .scaledToFit()
        .matchedGeometryEffect(id: "\(id)-photo", in: namespace)
    }
}
