//
//  ViewModel.swift
//  Login
//
//  Created by Sankaet Cheemalamarri on 2/1/24.
//

import Foundation

class LoginViewModel : ObservableObject {
     private var accounts: Accounts = Accounts() // Think about the modifier here
    @Published var currentUser: Accounts.User? // Think about the modifier here
    
    // This uses the Model Accounts and adds a user to it
    func addUser(username: String, password: String) {
        accounts.register(username: username, password: password)
        print("User \(username) has been registered")
    }
    
    // This signs in a user, meaning that it needs to check if the user is correct and then set the currentUser to that user
    func signInUser(username: String, password: String) {
        let user = Accounts.User(username: username, password: password)
        if accounts.isValidUser(user) {
            currentUser = user
        }
        print("User \(username) has been signed in")
    }
    
    func signOut() {
        currentUser = nil
    }
}
