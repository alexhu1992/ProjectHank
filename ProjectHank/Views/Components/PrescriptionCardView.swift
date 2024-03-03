//
//  PrescriptionCardView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/19/24.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        AnyTransition.move(edge: .trailing)
    }
}

struct PrescriptionCardView: View {
    let prescription: Prescription
    @State private var showDetails = false
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text("\(prescription.name)")
                    .bold()
                    .font(.subheadline)
                    .fontDesign(.rounded)
            }
            Spacer()
            Button {
                withAnimation {
                    showDetails.toggle()
                }
            } label: {
                Label("Graph", systemImage: "chevron.right.circle")
                    .labelStyle(.iconOnly)
                    .imageScale(.large)
                    .rotationEffect(.degrees(showDetails ? 90 : 0))
                    .padding()
                    .animation(.easeInOut, value: showDetails)
                
            }
        }
        
        if showDetails {
            PrescriptionDetailView(prescription: prescription)
                .transition(.moveAndFade)
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
