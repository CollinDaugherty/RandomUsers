//
//  UserListViewModel.swift
//  RandomUsers (iOS)
//
//  Created by Collin Daugherty on 3/15/22.
//

import Foundation

class UserCollectionViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func loadData() async {
        guard let url = URL(string: "https://randomuser.me/api/?results=20") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (jsonData, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Result.self, from: jsonData) {
                DispatchQueue.main.async {
                    return self.users = decodedResponse.results
                }
            }
        } catch {
            print("Invalid Data")
        }
    }
}
