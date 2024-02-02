//
//  UserbaseModel.swift
//  Login
//
//  Created by Sankaet Cheemalamarri on 2/1/24.
//

import Foundation

struct Accounts {
    var userList : [User] = [
        User(username: "Sankaet", password: "password")
    ]
    
    
    // This function should add the username and password into a new User object and then add that to the userList.
    // Remember to check whether the user already exists.
    mutating func register(username: String, password: String) {
        // FILL IN THIS FUNCTION
    }
    
    // This function should check if the user passed in has a valid username and a valid password.
    // This means that a user exists in the userList who has the correct username and password
    func isValidUser(_ user: User) -> Bool {
        return false
    }
    
    // This function checks whether the userList contains a given user.
    func has(_ user: User) -> Bool {
        userList.contains(where: { $0.id == user.id })
    }
    
    // We use the following struct to represent a single User object.
    struct User: Identifiable, Equatable {
        let id: String
        let username: String
        let password: String
        
        init(username: String, password: String) {
            self.username = username
            self.password = password
            
            self.id = username // we use the username of the User as their id, ensuring all usernames are unique.
        }
    }
}
