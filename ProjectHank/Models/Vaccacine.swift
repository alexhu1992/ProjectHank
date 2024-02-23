//
//  Vacaccine.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/22/24.
//

import Foundation

struct Vaccacine: Identifiable, Codable, Observable {
    let id: UUID
    let name: String
    let dueDate: Date
    let lastVacaDate: Date
    
    init(id: UUID = UUID(), name: String, dueDate: Date, lastVacaDate: Date) {
        self.id = id
        self.name = name
        self.dueDate = dueDate
        self.lastVacaDate = lastVacaDate
    }
}

extension Vaccacine {
    static let sampleData: [Vaccacine] = [
        Vaccacine(name: "Rabbies", dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date.now)!, lastVacaDate: Date.distantPast),
        Vaccacine(name: "Influenza", dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date.now)!, lastVacaDate: Date.distantPast)
    ]
}
