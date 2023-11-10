//
//  InsertFactView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 10/11/23.
//

import SwiftUI

struct InsertFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) {  item in
                    Text(item)
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180) 
        }//: BOX
    }
}

struct InsertFactView_Preview: PreviewProvider{
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View {
        
        InsertFactView(animal: animals[0])
    }
}
