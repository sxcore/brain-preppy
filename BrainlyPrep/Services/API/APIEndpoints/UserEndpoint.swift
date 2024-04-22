//
//  UserEndpoint.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 22/04/2024.
//

import Foundation

enum UserEndpoint: APIEndpoint {
    case getUsers

    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

    var path: String {
        switch self {
        case .getUsers:
            return "/users"
        }
    }

    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        }
    }

    var headers: [String : String]? {
        switch self {
        case .getUsers:
            return nil
        }
    }

    var parameters: [String : String]? {
        switch self {
        case .getUsers:
            return nil
        }
    }

}
