//
//  PokemonAPIService.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 09/04/2024.
//

import Foundation
import Combine

class PokemonAPIService {
    private let baseURL = URL(string: "https://pokeapi.co/api/v2/")!
    private let fetchPokemonsEndoint = "pokemon"
    
    func fetchPokemonList() -> AnyPublisher<[PokemonListModel], Error> {
        let pokemonListURL = baseURL.appending(path: fetchPokemonsEndoint)
        return URLSession.shared.dataTaskPublisher(for: pokemonListURL)
            .map(\.data)
            .decode(type: [PokemonListModel].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

}
