//
//  UserEndpoint.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 22/04/2024.
//

import Foundation

enum UserEndpoint: APIEndpoint {
    case getUsers
    case getUser(username: String)

    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

    var path: String {
        switch self {
        case .getUsers:
            return "/users"
        case let .getUser(username):
            return "/users/\(username)"
        }
    }

    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        case .getUser(username: let username):
            return .get
        }
    }

    var headers: [String : String]? {
        switch self {
        case .getUsers:
            return nil
        case .getUser(username: let username):
            return nil
        }
    }

    var parameters: [String : String]? {
        switch self {
        case .getUsers:
            return nil
        case .getUser(username: let username):
            return nil
        }
    }

}
