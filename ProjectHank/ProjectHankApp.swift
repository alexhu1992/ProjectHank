//
//  ProjectHankApp.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/18/24.
//

import SwiftUI
import SwiftData

@main
struct ProjectHankApp: App {
    var container: ModelContainer
    
    init() {
        do {
            let storeURL = URL.documentsDirectory.appending(path: "pawfriend.store")
            let config = ModelConfiguration(url: storeURL)
            container = try ModelContainer(for: Pet.self, configurations: config)
        } catch {
            fatalError("Failed to configure SwiftData container.")
        }
    }

    var body: some Scene {
        WindowGroup {
            TabView {
                PetListView(pets: Pet.sampleData)
                    .tabItem {
                        Label("Paws", systemImage: "pawprint")
                    }
                HealthListView(prescriptions: Prescription.sampleData, vaccacines: Vaccacine.sampleData, name: "hello")
                    .tabItem {
                        Label("Health", systemImage: "syringe")
                    }
                AboutView()
                    .tabItem {
                        Label("About", systemImage: "dog.circle.fill")
                    }
            }
        }.modelContainer(container)
    }
}
