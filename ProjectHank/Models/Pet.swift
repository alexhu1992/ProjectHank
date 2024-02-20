//
//  Pet.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import Foundation

/**
 Simple struct represents a pet, contains basic information of a pet
 */
struct Pet: Identifiable, Codable, Observable {
    let id: UUID
    
    let name: String
    let birthday: Date
    let breed: Breed
    
    init(id: UUID = UUID(), name: String, birthday: Date, breed: Breed) {
        self.id = id
        self.name = name
        self.birthday = birthday
        self.breed = breed
    }
}

extension Pet {
    static let sampleData: [Pet] = [
        Pet(name: "Hank", birthday: Date.now, breed: .shiba_inu),
        Pet(name: "Avocado", birthday: Date.now, breed: .golden_retriever),
        Pet(name: "Leo", birthday: Date.now, breed: .german_sheperd)
    ]
}
