//
//  AboutView.swift
//  ProjectHank
//
//  Created by Mengheng Hu on 3/2/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        HStack(alignment: .center) {
            GifImageView(name: "shiba")
                .frame(width: 50, height: 40)
                .scaledToFill()
            Text("Made with love in WA ❤️")
                .animation(.bouncy)
        }
    }
}

#Preview {
    AboutView()
}
