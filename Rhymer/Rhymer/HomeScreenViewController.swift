//
//  HomeScreenViewController.swift
//  Rhymer
//
//  Created by Arya Gharib on 7/16/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

public var wordToSearch: String? = nil

class ViewController: UIViewController {
    
    var rhymedWords: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Constantly update the global variable "wordToSearch" here with the contents of the search bar
    }

}

// In the @IBAction for the "Rhyme!" button, do the following code:

//let apiToContact = "https://api.datamuse.com/words?rel_rhy=\(wordToSearch)"
//
//Alamofire.request(apiToContact).validate().responseJSON() { response in
//    switch response.result {
//    case .success:
//        if let value = response.result.value {
//            let jsonData = try! Data(contentsOf: apiToContact)
//            let wordsData = try! Data(contentsOf: apiToContact)
//            let json = JSON(value)
//            let rhymedWord = RhymingWord(json: json, wordIndex: rhymedWords.count)
//            self.movieTitleLabel.text = movie.name
//            self.rightsOwnerLabel.text = movie.rightsOwner
//            self.releaseDateLabel.text = movie.releaseDate
//            self.priceLabel.text = movie.price
//            self.loadPoster(urlString: movie.imageLink)
//
//        }
//    case .failure(let error):
//        print(error)
//    }
//}

