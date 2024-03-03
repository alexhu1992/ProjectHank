//
//  PrescriptionCardView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

struct PrescriptionCardView: View {
    let prescription: Prescription
    @State private var reminderOn = true
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text("\(prescription.name)")
                    .bold()
                    .font(.subheadline)
                    .fontDesign(.rounded)
                Label("\(prescription.schedule)", systemImage: "pill.circle")
                    .accessibilityAddTraits(.isHeader)
                    .foregroundColor(.yellow)
            }
            Spacer()
            Toggle("", isOn: $reminderOn)
        }
    }
    
    private func isToggleOn() -> Bool {
        print("Toggled!!")
        return true
    }
}

#Preview {
    PrescriptionCardView(prescription: Prescription.sampleData[0])
}
