//
//  Pet.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import Foundation
import CoreData
import SwiftData

/**
 Simple struct represents a pet, contains basic information of a pet
 */
@Model
final class Pet{
    let id: UUID
    
    let name: String
    let birthday: Date
    let breed: Breed
    
    let prescriptions: [Prescription]?
    let vacaccines: [Vaccacine]?
    
    init(id: UUID = UUID(), name: String, birthday: Date, breed: Breed, prescriptions: [Prescription]? = [], vacaccines: [Vaccacine]? = []) {
        self.id = id
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.prescriptions = prescriptions
        self.vacaccines = vacaccines
    }
}

extension Pet {
    static let sampleData: [Pet] = [
        Pet(name: "Hank", birthday: Date.now, breed: .shiba_inu, prescriptions: Prescription.sampleData, vacaccines: Vaccacine.sampleData),
        Pet(name: "Avocado", birthday: Date.now, breed: .golden_retriever, prescriptions: Prescription.sampleData, vacaccines: Vaccacine.sampleData),
        Pet(name: "Leo", birthday: Date.now, breed: .german_sheperd, prescriptions: Prescription.sampleData, vacaccines: Vaccacine.sampleData)
    ]
}
