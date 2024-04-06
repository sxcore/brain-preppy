//
//  TodoModel.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import Foundation

struct TodoModel: Decodable {
    let id: Int
    let title: String
    let completed: Bool
}
