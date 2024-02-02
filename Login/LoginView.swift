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
        .onChange(of: viewModel.currentUser) { currentUser in
            isOnLoginPage = (currentUser == nil)
        }
    }
    
    var loginPage: some View {
        // This is what should show when on login page
        // FILL THIS IN
        EmptyView()
    }
    
    var signedInPage: some View {
        // This is what should show when logged in
        // make sure to show the user and password of the current User here, not the user and password which were typed in the text field
        // FILL THIS IN
        EmptyView()
    }
}

#Preview {
    LoginView()
}
