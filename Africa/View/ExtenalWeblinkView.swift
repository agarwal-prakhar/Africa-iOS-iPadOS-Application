//
//  ExtenalWeblinkView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 11/11/23.
//

import SwiftUI

struct ExtenalWeblinkView: View {
    
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    
    var body: some View {
        Group {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL (string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}

struct ExtenalWeblinkView_Preview: PreviewProvider{
    
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View {        
        ExtenalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
