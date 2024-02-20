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
                PrescriptionView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Label("Rx", systemImage: "archivebox")
                    }

            }
            
        }
    }
}
