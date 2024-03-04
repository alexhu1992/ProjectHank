//
//  PrescriptionDetailView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 3/2/24.
//

import SwiftUI

struct PrescriptionDetailView: View {
    @State var prescription: Prescription
    @State var isReminderOn: Bool = true
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Label("\(prescription.schedule)", systemImage: "clock")
                    .font(.subheadline)
            }
            .onTapGesture(perform: {
                print("hello")
            })
            Spacer()
            Toggle("", isOn: $isReminderOn)
        }
    }
}

#Preview {
    PrescriptionDetailView(prescription: Prescription.sampleData[0])
}
