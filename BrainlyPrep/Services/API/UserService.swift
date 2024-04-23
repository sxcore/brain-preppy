//
//  UserService.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 23/04/2024.
//

import Combine
import Foundation

protocol UserServiceProtocol {
    func getUsers() -> AnyPublisher<[UserModel], Error>
//    func getUser() -> AnyPublisher<UserDetailsModel, Error> //TODO: check if it is ok to fetch data again with more details OR just parse everything and just select by index of array?
}

class UsersService: UserServiceProtocol {
    let apiClient = ClientURLSession<UserEndpoint>()

    func getUsers() -> AnyPublisher<[UserModel], Error> {
        return apiClient.request(.getUsers)
    }
}
