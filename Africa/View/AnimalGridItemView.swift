//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 14/11/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Preview: PreviewProvider{
    
    static let animals : [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View {
    AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
