//
//  APIEndpoint.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 22/04/2024.
//

import Foundation

protocol APIEndpoint {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: [String: String]? { get }
    var parameters: [String: String]? { get }
}

enum HTTPMethod: String {
    case get = "GET"
    //TODO: expand when needed
}

enum APIError: Error {
    case invalidResponse
    case invalidData
}
