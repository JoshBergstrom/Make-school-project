//
//  RhymingWord.swift
//  Rhymer
//
//  Created by Arya Gharib on 7/16/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import SwiftyJSON


struct RhymingWord : Decodable{
    let word: String
    let numSyllables: Int
    let score: Int?
    
//    init(json: JSON, wordIndex index: Int) {
//        self.word = json[index]["word"].stringValue
//        self.numOfSyllables = json[index]["numSyllables"].intValue
//        self.usageScore = json[index]["numSyllables"].intValue
//    }
}
