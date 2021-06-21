//
//  EkAnek_Grid_LayoutResults.swift
//  EkAnek_Grid_Layout
//
//  Created by PiancaSiri on 21/06/21.
//  
//

import UIKit

struct FlickrSearchResults: Codable {
    let stat: String?
    let photos: Photos?
    
    enum CodingKeys: String, CodingKey {
        case stat
        case photos
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        stat = try container.decodeIfPresent(String.self, forKey: .stat)
        photos = try container.decodeIfPresent(Photos.self, forKey: .photos)
    }
}
