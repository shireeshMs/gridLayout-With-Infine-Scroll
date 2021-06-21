//
//  ImageModel.swift
//  EkAnek_Grid_Layout
//
//  Created by PiancaSiri on 21/06/21.
//  
//

import UIKit

struct ImageModel {

    let imageURL: String
    
    init(withPhotos photo: FlickrPhoto) {
        imageURL = photo.imageURL
    }
}
