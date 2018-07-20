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

class ResultsScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var rhymedWords: [RhymingWord] = []
    
    //IBOutlets
    @IBOutlet weak var wordSearched: UILabel!
    @IBOutlet weak var resultsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rhymedWords.count
    }
    
    func tableView(_ tableView: (UITableView!), cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rhymeResultsCell") as! ResultsTableCellView
        guard let wordToSearch = wordToSearch else {
            fatalError("No word has been searched")
        }
        wordSearched.text = wordToSearch
        print(wordToSearch)
        let apiToContact = "https://api.datamuse.com/words?rel_rhy=\(wordToSearch)"
        
        Alamofire.request(apiToContact).validate().responseJSON() { response in
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let searchURL = NSURL.fileURL(withPath: apiToContact)
                    let jsonData = try! Data(contentsOf: searchURL)
                    let wordsData = try! JSON(data: jsonData)
                    let allWordsData = wordsData.arrayValue
                    let word = allWordsData[self.rhymedWords.count - 1]
                    let nextRhymedWord = RhymingWord(json: word, wordIndex: self.rhymedWords.count)
                    self.rhymedWords.append(nextRhymedWord)
                    cell.wordLabel.text = nextRhymedWord.word
                    cell.numberOfSyllables.text = String(nextRhymedWord.numOfSyllables)
                }
            case.failure(let error):
                print(error)
            }
        }
        return cell
    }
        }
    

