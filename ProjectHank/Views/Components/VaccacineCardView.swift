//
//  VaccacineCardView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 2/22/24.
//

import SwiftUI

struct VaccacineCardView: View {
    let vaccacine: Vaccacine
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(vaccacine.name)
                .font(.subheadline)
                .fontDesign(.rounded)
                .bold()
                .accessibilityAddTraits(.isHeader)
            
            HStack(alignment: .top) {
                DatePicker(selection: .constant(vaccacine.dueDate), displayedComponents: .date, label: { Label("Due on:", systemImage: "calendar.badge.clock") })
            }
        }
        .padding()
    }
}

#Preview {
    VaccacineCardView(vaccacine: Vaccacine.sampleData[0])
}
