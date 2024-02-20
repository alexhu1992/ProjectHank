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
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                MainPetView(pets: Pet.sampleData)
                    .tabItem {
                        Label("Paws", systemImage: "pawprint")
                    }
            }
            
        }
    }
}
