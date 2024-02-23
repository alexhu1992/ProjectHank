//
//  PrescriptionCardView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

struct PrescriptionCardView: View {
    let prescription: Prescription
    
    var body: some View {
        HStack(alignment: .top) {
            Text("\(prescription.name)")
                .bold()
                .font(.subheadline)
                .fontDesign(.rounded)
            Spacer()
            Label("\(prescription.schedule)", systemImage: "pill.circle")
                .accessibilityAddTraits(.isHeader)
                .foregroundColor(.yellow)
        }
        .padding()
    }
}

#Preview {
    PrescriptionCardView(prescription: Prescription.sampleData[0])
}
