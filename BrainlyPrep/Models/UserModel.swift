//
//  UserModel.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 23/04/2024.
//

import Foundation

struct UserModel: Decodable, Identifiable {
    let login: String
    let id: Int
    let avatar_url: String
    let followers_url: String //TODO: check how to parse count https://api.github.com/users/octocat/followers
}
