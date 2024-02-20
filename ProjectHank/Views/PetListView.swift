//
//  MainPetView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

struct PetListView: View {
    let pets: [Pet]

    var body: some View {
        NavigationStack {
            List(pets) { pet in
                NavigationLink(destination: Text(pet.name)) {
                    PetCardView(pet: pet)
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                    .accessibilityLabel("New pet")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .navigationTitle(Text("Pawfriend"))
        }
    }
}

#Preview {
    PetListView(pets: Pet.sampleData)
}
