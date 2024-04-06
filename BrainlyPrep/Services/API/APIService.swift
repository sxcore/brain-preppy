//
//  APIService.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import Foundation
import Combine

class APIService {
    private let baseURL = URL(string: "https://jsonplaceholder.typicode.com/todos")! // TODO: make a global constant
    
    func fetchTodos() -> AnyPublisher<[TodoModel], Error> {
        URLSession.shared.dataTaskPublisher(for: baseURL)
            .map(\.data)
            .decode(type: [TodoModel].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

}
