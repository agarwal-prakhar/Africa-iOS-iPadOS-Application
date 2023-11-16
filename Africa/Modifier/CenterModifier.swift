//
//  CenterModifier.swift
//  Africa
//
//  Created by Prakhar Agarwal on 17/11/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
