//
//  JSONParser.swift
//  Rhymer
//
//  Created by Arya Gharib on 7/16/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation

struct RhymingWord: Decodable {
    let word: String
    let numOfSyllables: Int
    let usageScore: Int
    
    init(json:) {
        <#statements#>
    }
}
