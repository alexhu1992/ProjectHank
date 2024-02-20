//
//  PetCardView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

struct PetCardView: View {
    let pet: Pet
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(pet.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
                .bold()
                .navigationTitle(pet.name)
            Spacer()
            HStack {
                Label("\(pet.breed.rawValue)", systemImage: "dog")
                Spacer()
                Label("\(pet.birthday)", systemImage: "clock")
                    .padding(.trailing, 20)
                    .labelStyle(.automatic)
            }
            .font(.caption)
        }
        .padding()
    }
}

#Preview {
    PetCardView(pet: Pet.sampleData[0])
        .previewLayout(.fixed(width: 400, height: 60))
}
