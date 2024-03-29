//
//  LoginView.swift
//  Login
//
//  Created by Sankaet Cheemalamarri on 2/1/24.
//

import SwiftUI

struct LoginView: View {
    @State var user: String = "" // Think about modifier
    @State var password: String = "" // Think about modifier
    @State var isOnLoginPage: Bool = true // Think about modifier
    @ObservedObject var viewModel = LoginViewModel() // Think about modifier
    
    var body: some View {
        Group {
            if isOnLoginPage {
                loginPage
            } else {
                signedInPage
            }
        }
        .onChange(of: viewModel.currentUser) {
            isOnLoginPage = (viewModel.currentUser == nil)
        }
        .background(Color.gray.opacity(0.2))
    }
    
    var loginPage: some View {
        VStack(alignment: .center, spacing: 20){
            Text("Log In With Your Username and Password")
            TextField("Username", text: $user).padding()
            SecureField("Password", text: $password).padding()
            
            Button("Sign In") {
                viewModel.signInUser(username: user, password: password)
                
            }.padding()
            
            Button("Sign Up") {
                viewModel.addUser(username: user, password: password)
            }.padding()
        }
        
    }
    
    var signedInPage: some View {
        // This is what should show when logged in
        // make sure to show the user and password of the current User here, not the user and password which were typed in the text field
        // FILL THIS IN
        VStack {
            Text("\(user)")
            Text("\(password)")
            
            Button("Back To Login Page") {
                viewModel.signOut()
            }
        }
    }
}

#Preview {
    LoginView()
}
