//
//  UsersViewModel.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 23/04/2024.
//

import Combine
import Foundation

class UsersViewModel: ObservableObject {
    @Published var users: [UserModel] = []
    private var cancellables = Set<AnyCancellable>()

    let userService: UserServiceProtocol

    init(userService: UserServiceProtocol) {
        self.userService = userService
    }

    func fetchUsers() {
        userService.getUsers()
            .receive(on: RunLoop.main)
//            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { error in
                // TODO: handle errors
                print(error)
            }, receiveValue: {[weak self] data in
                self?.users = data
            }).store(in: &cancellables)

    }

}
