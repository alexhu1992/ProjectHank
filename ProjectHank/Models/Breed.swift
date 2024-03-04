//
//  BreedType.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import Foundation

enum Breed: String, Codable, CaseIterable, Identifiable {
    var id: Self { self }
    
    case shiba_inu = "Shiba Inu"
    case german_sheperd = "Sherman Sheperd"
    case golden_retriever = "Golden Retriver"
    
    var description: String {

    switch self {
        case .shiba_inu:
            return "Shiba Inu"
        case .german_sheperd:
            return "Sherman Sheperd"
        case .golden_retriever:
            return "Golden Retriver"
        }
    }
}
