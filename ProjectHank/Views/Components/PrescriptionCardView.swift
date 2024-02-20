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
        Text(prescription.name)
    }
}

#Preview {
    PrescriptionCardView(prescription: Prescription.sampleData[0])
}
