//
//  ResultsScreenViewController.swift
//  Rhymer
//
//  Created by Josh Bergstrom on 7/17/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire

class ResultsScreenViewController: UIViewController {
    var rhymedWords: [RhymingWord] = []

    //IBOutlets
    @IBOutlet weak var wordSearched: UILabel!
    @IBOutlet weak var resultsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let wordToSearch = wordToSearch else {
            fatalError("No word has been searched")
        }
        wordSearched.text = wordToSearch
        let apiToContact = "https://api.datamuse.com/words?rel_rhy=\(wordToSearch)"
        
        Alamofire.request(apiToContact).validate().responseJSON() { response in
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let searchURL = NSURL.fileURL(withPath: apiToContact)
                    let jsonData = try! Data(contentsOf: searchURL)
                    let wordsData = try! JSON(data: jsonData)
                    let allWordsData = wordsData.arrayValue
                    for word in allWordsData {
                        let nextRhymedWord = RhymingWord(json: word, wordIndex: self.rhymedWords.count)
                        self.rhymedWords.append(nextRhymedWord)
                    }
                }
            case .failure(let error):
                print(error)
            }
        }

    }
    
}


