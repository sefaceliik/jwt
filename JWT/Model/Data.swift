//
//  Data.swift
//  JWT
//
//  Created by Sefa Çelik on 12.11.2020.
//

import Foundation

struct Dataa: Decodable {
    /*enum Category: String,Decodable {
        case swift, combine, debugging, xcode
    }*/
    let id : Int
    let name : String
    let surname : String
    let username : String
    let jwtToken : String
    let refreshToken : String
}
