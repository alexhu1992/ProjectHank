//
//  Prescription.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import Foundation

struct Prescription: Identifiable, Codable, Observable {
    let id: UUID
    let name: String
    let prescribedDate: Date
    let refillable: Bool
    let isActive: Bool
    let schedule: String
    let expirationDate: Date
    
    init(id: UUID = UUID(), name: String, prescribedDate: Date, refillable: Bool, isActive: Bool, schedule: String, expirationDate: Date) {
        self.id = id
        self.name = name
        self.prescribedDate = prescribedDate
        self.refillable = refillable
        self.isActive = isActive
        self.schedule = schedule
        self.expirationDate = expirationDate
    }
}

extension Prescription {
    static let sampleData: [Prescription] = [
        Prescription(name: "Drug 1", prescribedDate: Date.distantPast, refillable: false, isActive: true, schedule: "Twice a day", expirationDate: Date.distantFuture),
        Prescription(name: "Apoquel 16mg Tablet", prescribedDate: Date.distantPast, refillable: false, isActive: true, schedule: "Once a day", expirationDate: Date.distantFuture)
    ]
}
