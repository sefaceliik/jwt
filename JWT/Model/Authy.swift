//
//  Authy.swift
//  JWT
//
//  Created by Sefa Çelik on 12.11.2020.
//

import Foundation

class Authy {
    
    static let sharedInstance = Authy()
    
    
    var id = 0
    var name = ""
    var surname = ""
    var username = ""
    var jwtToken = ""
    var refreshToken = ""
    
    private init() {}
}
