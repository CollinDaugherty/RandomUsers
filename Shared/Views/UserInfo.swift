//
//  UserInfo.swift
//  RandomUsers (iOS)
//
//  Created by Collin Daugherty on 3/16/22.
//

import SwiftUI

struct UserInfo: View {
    var fullName: String
    var email: String
    var alignment: HorizontalAlignment = .leading
    
    var body: some View {
        VStack(alignment: alignment) {
            Text(fullName)
                .font(.headline)
                .lineLimit(1)
                .minimumScaleFactor(0.01)
            Text(email)
                .font(.subheadline)
                .lineLimit(1)
                .minimumScaleFactor(0.01)
                .foregroundColor(Color(.secondaryLabel))
        }
    }
}
