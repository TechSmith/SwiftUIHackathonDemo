//
//  MSULandmarksApp.swift
//  MSULandmarks
//
//  Created by Daewoo Maurya on 1/23/24.
//

import SwiftUI
import SwiftData

@main
struct MSULandmarksApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Visit.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(sharedModelContainer)
    }
}
