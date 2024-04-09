//
//  PokemonListViewModel.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 09/04/2024.
//

import Foundation
import Combine

class PokemonListViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    private let apiService = PokemonAPIService()
    
    @Published var pokemons: [PokemonListModel] = []
    
    func fetchPokemons() {
        apiService.fetchPokemonList()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }) { pokemons in
                self.pokemons = pokemons
            }
            .store(in: &cancellables)
    }
    
}
