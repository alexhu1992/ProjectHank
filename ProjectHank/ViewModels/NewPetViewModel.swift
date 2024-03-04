//
//  NewPetViewModel.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 3/3/24.
//

import Foundation
import SwiftData

class NewPetViewModel: ObservableObject {
    @Published var name = ""
    @Published var birthday = Date()
    @Published var breed : Breed = .shiba_inu
    @Published var showNewViewModel = false
    
    public func save(with context: ModelContext) {
        guard canSave else {
            return
        }

        var newPet = Pet(name: name, birthday: birthday, breed: breed)
        context.insert(newPet)
        
        try? context.save()
    }
    
    var canSave: Bool {
        guard !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return false
        }
        
        guard birthday >= Date().addingTimeInterval(-11111186400) else {
            return false
        }
        
        return true
    }
}
