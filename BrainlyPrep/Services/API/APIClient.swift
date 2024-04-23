//
//  APIClient.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 23/04/2024.
//

import Combine
import Foundation

protocol APIClient {
    associatedtype Endpoint: APIEndpoint //TODO: https://www.avanderlee.com/swift/associated-types-protocols/
    func request<T: Decodable>(_ endpoint: Endpoint) -> AnyPublisher<T, Error> //TODO: https://www.programiz.com/swift-programming/generics
}

class ClientURLSession<Endpoint: APIEndpoint>: APIClient {
    func request<T: Decodable>(_ endpoint: Endpoint) -> AnyPublisher<T, Error> {
        let url = endpoint.baseURL.appendingPathComponent(endpoint.path)
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue

        endpoint.headers?.forEach { request.addValue($0.value, forHTTPHeaderField: $0.key) }

        return URLSession.shared.dataTaskPublisher(for: request)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .tryMap { data, response -> Data in
                guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                    throw APIError.invalidResponse
                }
                return data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

}
