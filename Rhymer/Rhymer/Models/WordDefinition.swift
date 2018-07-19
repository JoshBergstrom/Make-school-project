//
//  WordDefinition.swift
//  Rhymer
//
//  Created by Arya Gharib on 7/19/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

struct WordDefinition {
    let appId = "bbdc0eb3"
    let appKey = "599ae31c8e901789d51a534320d47959"
    let language = "en"
    let word: String
    let word_id: String
    let url: URL
    var request: URLRequest
    
    init(wordToDefine word: String, viewController view: UIViewController) {
        self.word = word
        self.word_id = word.lowercased()
        self.url = URL(string: "https://od-api.oxforddictionaries.com:443/api/v1/entries/\(language)/\(word_id)")!
        self.request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue(appId, forHTTPHeaderField: "app_id")
        request.addValue(appKey, forHTTPHeaderField: "app_key")
        
        let session = URLSession.shared
        _ = session.dataTask(with: request, completionHandler: { data, response, error in
            if let response = response,
                let data = data,
                let jsonData = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) {
                if let dictionary = jsonData as? [String: Any]{
                    if let def = dictionary["results"] as? String {
                        
                    }
                }
                print(response)
                print(jsonData)
            } else {
                print(error)
                print(NSString.init(data: data!, encoding: String.Encoding.utf8.rawValue))
            }
        }).resume()
    }
}
