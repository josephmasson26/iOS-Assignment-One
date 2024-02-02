//
//  ViewModel.swift
//  Login
//
//  Created by Sankaet Cheemalamarri on 2/1/24.
//

import Foundation

class LoginViewModel : ObservableObject {
    var accounts: Accounts = Accounts() // Think about the modifier here
    var currentUser: Accounts.User? // Think about the modifier here
    
    // This uses the Model Accounts and adds a user to it
    func addUser(username: String, password: String) {
        // FILL IN THIS FUNCTION
    }
    
    // This signs in a user, meaning that it needs to check if the user is correct and then set the currentUser to that user
    func signInUser(username: String, password: String) {
        // FILL IN THIS FUNCTION
    }
    
    func signOut() {
        currentUser = nil
    }
}
