//
//  MainPetView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

struct MainPetView: View {
    let pets: [Pet]

    var body: some View {
        NavigationStack {
            List(pets) { pet in
                NavigationLink(destination: Text(pet.name)) {
                    PetCardView(pet: pet)
                }
            }
            .navigationTitle("Your Pawfirend")
            .toolbar {
                Button(action: {}, label: {
                    Image(systemName: "plus")
                })
                .accessibilityLabel("New pet")
            }
        }
    }
}

#Preview {
    MainPetView(pets: Pet.sampleData)
}
