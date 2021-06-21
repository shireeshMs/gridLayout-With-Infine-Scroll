//
//  FlickrPhoto.swift
//  EkAnek_Grid_Layout
//
//  Created by PiancaSiri on 21/06/21.
//  
//

import UIKit

struct FlickrPhoto: Codable {
    
    let farm : Int
    let id : String
    
    let isfamily : Int
    let isfriend : Int
    let ispublic : Int
    
    let owner: String
    let secret : String
    let server : String
    let title: String
    
//    let Ourkitten : String
//    enum CodingKeys: String, CodingKey {
//        case farm
//        case id
//        
//        case isfamily
//        case isfriend
//        case ispublic
//        
//        case owner
//        case secret
//        case server
//        case title
//    }
//    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        farm = try container.decode(Int.self, forKey: .farm)
//        print(farm)
//        id = try container.decode(String.self, forKey: .id)
//        print(id)
//        isfamily = try container.decode(Int.self, forKey: .isfamily)
//        print(isfamily)
//        isfriend = try container.decode(Int.self, forKey: .isfriend)
//        print(isfriend)
//        ispublic = try container.decode(Int.self, forKey: .ispublic)
//        print(ispublic)
//        owner = try container.decode(String.self, forKey: .owner)
//        print(owner)
//        secret = try container.decode(String.self, forKey: .secret)
//        print(secret)
//        server = try container.decode(String.self, forKey: .server)
//        print(server)
//        title = try container.decode(String.self, forKey: .title)
//        print(title)
//    }
    
    var imageURL: String {
        let urlString = String(format: FlickrConstants.imageURL, farm, server, id, secret)
        return urlString
    }
}
