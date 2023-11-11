//
//  VideoModel.swift
//  Africa
//
//  Created by Prakhar Agarwal on 11/11/23.
//

import Foundation

struct Video: Codable, Identifiable{
    
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
}
