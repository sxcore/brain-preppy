//
//  PokemonListModel.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 09/04/2024.
//

import Foundation

// MARK: - PokemonList
struct PokemonListModel: Codable {
    let count: Int
    let next: String
    let previous: String
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let name: String
    let url: String
}
