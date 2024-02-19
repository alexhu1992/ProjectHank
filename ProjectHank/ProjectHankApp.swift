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
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
