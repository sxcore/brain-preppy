//
//  BrainlyPrepApp.swift
//  BrainlyPrep
//
//  Created by Michał Czerniakowski on 06/04/2024.
//

import SwiftUI
import SwiftData

@main
struct BrainlyPrepApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            MainView()
        }
//        .modelContainer(sharedModelContainer)
    }
}
