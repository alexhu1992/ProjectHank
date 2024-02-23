//
//  ProjectHankApp.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/18/24.
//

import SwiftUI

@main
struct ProjectHankApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabView {
                PetListView(pets: Pet.sampleData)
                    .tabItem {
                        Label("Paws", systemImage: "pawprint")
                    }
                HealthListView(prescriptions: Prescription.sampleData, vaccacines: Vaccacine.sampleData)
                    .tabItem {
                        Label("Health", systemImage: "syringe")
                    }
                DogParkListView()
                    .tabItem {
                        Label("Parks", systemImage: "map")
                    }
            }
            
        }
    }
}
