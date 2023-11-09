//
//  ContentView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: PROPERTIES
        
        let animals: [Animal] =
        Bundle.main.decode("animals.json")
        //MARK: BODY
        NavigationView{
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) {
                    animal in AnimalListItemView(animal: animal)
                }
            }//:LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }//: NAVIGATION VIEW
        
        
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Content")
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
