//
//  CoverImageView.swift
//  Africa
//
//  Created by Prakhar Agarwal on 06/11/23.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: PROPERTIES
    
    
    
    
    //MARK: BODY
    
    var body: some View {
        TabView{
            ForEach(0 ..< 5){ item in 
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
            }//: FOR LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView().previewLayout(.fixed(width: 400, height: 300))
}
