//
//  SearchViewModel.swift
//  MySNS
//
//  Created by 박연배 on 2021/07/19.
//

import Foundation
import SwiftUI
import Firebase


class SearchViewModel: ObservableObject {
    @Published var users = [UserModel]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            
            
            self.users = documents.compactMap({ try? $0.data(as: UserModel.self) })
        }
    }
    
    func filteringUsers(query: String) -> [UserModel] {
        let lowerCaseQuery = query.lowercased()
        return users.filter({ $0.userID.contains(lowerCaseQuery) || $0.userName.contains(lowerCaseQuery) })
    }
}
