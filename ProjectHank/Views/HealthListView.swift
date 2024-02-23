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
        VStack(alignment: .leading) {
            Text("Prescriptions")
                .font(.title2)
                .bold()
                .foregroundStyle(.foreground)
                .fontDesign(.rounded)
                .padding()
            
            ForEach(prescriptions!) { prescription in
                PrescriptionCardView(prescription: prescription)
            }
            
            Divider()
            
            Text("Vaccacines")
                .font(.title2)
                .foregroundStyle(.foreground)
                .fontDesign(.rounded)
                .padding()
                .bold()
            
            ForEach(vaccacines!) { vaccacine in
                VaccacineCardView(vaccacine: vaccacine)
            }
            
            Spacer()
        }
    }
}

#Preview {
    HealthListView(
        prescriptions: Prescription.sampleData,
        vaccacines: Vaccacine.sampleData
    )
}
