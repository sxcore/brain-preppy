//
//  TodoViewModel.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import Foundation
import Combine

class TodoViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    private let apiService = APIService()
    
    @Published var todos: [TodoModel] = []
    
    func fetchTodos() {
        apiService.fetchTodos()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }) { todos in
                self.todos = todos // TODO: fix memory leak
            }
            .store(in: &cancellables)
    }
}
