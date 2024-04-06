//
//  MainView.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = TodoViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.todos, id: \.id) { todo in
                Text(todo.title)
            }
            .onAppear {
                viewModel.fetchTodos()
            }
            .navigationTitle("Todos")
        }
    }
}

#Preview {
    MainView()
}
