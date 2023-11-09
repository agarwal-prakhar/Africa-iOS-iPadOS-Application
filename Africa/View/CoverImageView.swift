//
//  CoverImageView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 06/11/23.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: PROPERTIES
    
    let coverImages: [CoverImage] =
    Bundle.main.decode("covers.json")
    
    
    //MARK: BODY
    
    
    var body: some View {
        TabView{
            ForEach(coverImages){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: FOR LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView().previewLayout(.fixed(width: 400, height: 300))
}
