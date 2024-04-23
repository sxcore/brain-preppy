//
//  MainView.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = UsersViewModel(userService: UsersService()) //TODO: Dependency Injection could happen here

    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                Text(user.login)
            }
            .onAppear {
                viewModel.fetchUsers()
            }
            .navigationTitle("GH Users")
        }
    }
}

#Preview {
    MainView()
}
