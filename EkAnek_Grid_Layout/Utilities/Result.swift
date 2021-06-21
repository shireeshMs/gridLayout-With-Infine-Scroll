//
//  Result.swift
//  EkAnek_Grid_Layout
//
//  Created by PiancaSiri on 21/06/21.
//  
//

import UIKit

enum Result <T>{
    case Success(T)
    case Failure(String)
    case Error(String)
}
