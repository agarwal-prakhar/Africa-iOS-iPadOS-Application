//
//  CreditsView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 17/11/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            
            Text("""
    Copyright © Prakhar Agarwal
    All Right Reserved
    Made with ♥️ in India
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
        .previewLayout(.sizeThatFits)
        .padding()
}
