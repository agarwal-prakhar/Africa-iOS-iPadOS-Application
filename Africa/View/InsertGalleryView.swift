//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 10/11/23.
//

import SwiftUI

struct InsertGalleryView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self){ item in
                    Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(12)
                }//: FORLOOP
            }//: HSTACK
        }//: SCROLL
    }
}

struct InsertGalleryView_Preview: PreviewProvider{
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View { 
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
