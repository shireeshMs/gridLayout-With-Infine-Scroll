//
//  Utility.swift
//  EkAnek_Grid_Layout
//
//  Created by PiancaSiri on 21/06/21.
//  
//

import UIKit

class GCD {
    
    static func runAsynch(closure: @escaping () -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            closure()
        }
    }
    
    static func runOnMainThread(closure: @escaping () -> Void) {
        DispatchQueue.main.async {
            closure()
        }
    }
}
