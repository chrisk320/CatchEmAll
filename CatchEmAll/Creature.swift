//
//  Creature.swift
//  CatchEmAll
//
//  Created by Christian Kim on 3/16/25.
//

import Foundation

struct Creature: Codable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var url: String // url for detail on Pokemon
    
    enum CodingKeys: CodingKey { // ignore the ID property when decoding
        case name
        case url
    }
}
