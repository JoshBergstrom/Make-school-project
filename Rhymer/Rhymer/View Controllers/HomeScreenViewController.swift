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

class HomeScreenViewController: UIViewController {
    
    var rhymedWords: [RhymingWord] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Constantly update the global variable "wordToSearch" here with the contents of the search bar
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}



// In the @IBAction for the "Rhyme!" button, do the following code:
//
//let apiToContact = "https://api.datamuse.com/words?rel_rhy=\(wordToSearch)"
//
//Alamofire.request(apiToContact).validate().responseJSON() { response in
//    switch response.result {
//    case .success:
//        if let value = response.result.value {
//            let searchURL = NSURL.fileURL(withPath: apiToContact)
//            let jsonData = try! Data(contentsOf: searchURL)
//            let wordsData = try! JSON(data: jsonData)
//            let allWordsData = wordsData.arrayValue
//            for word in allWordsData {
//                let nextRhymedWord = RhymingWord(json: word, wordIndex: rhymedWords.count)
//                rhymedWords.append(nextRhymedWord)
//            }
//
//            //Set the correspomding UIElements to the attributes of RhymingWord()
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

