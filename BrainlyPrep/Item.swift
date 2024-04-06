//
//  Item.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
