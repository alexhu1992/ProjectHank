//
//  PrescriptionView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

struct HealthListView: View {
    let prescriptions: [Prescription]?
    let vaccacines: [Vaccacine]?
    
    var body: some View {
        NavigationStack {
            List {
                let prescription = 
                    Text("Prescriptions")
                    .font(.subheadline)
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                
                Section(header: prescription) {
                    ForEach(prescriptions!) { prescription in
                        PrescriptionCardView(prescription: prescription)
                            .swipeActions(edge: .trailing) {
                                Button(role: .destructive) {
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                        }
                    }
                }
                
                let vaccacine = Text("Vaccacines")
                    .font(.subheadline)
                    .padding(EdgeInsets())

                Section(header: vaccacine) {
                    ForEach(vaccacines!) { vaccacine in
                        VaccacineCardView(vaccacine: vaccacine)
                    }
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
            .navigationTitle("Health")
        }
    }
}

#Preview {
    HealthListView(
        prescriptions: Prescription.sampleData,
        vaccacines: Vaccacine.sampleData
    )
}
