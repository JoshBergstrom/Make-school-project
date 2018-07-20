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
    var rhymedWords: [RhymingWord] = []{
        didSet{
            DispatchQueue.main.async {
                 self.resultsTableView.reloadData()
            }
           
        }
    }
//    let apiToContact = "https://api.datamuse.com/words?rel_rhy=\(wordToSearch)"
//
//    Alamofire.request(apiToContact).validate().responseJSON() { response in
//    switch response.result {
//    case .success:
//    if let value = response.result.value {
//    let searchURL = NSURL.fileURL(withPath: apiToContact)
//    let jsonData = try! Data(contentsOf: searchURL)
//    let wordsData = try! JSON(data: jsonData)
//    let allWordsData = wordsData.arrayValue
//    let word = allWordsData[self.rhymedWords.count]
//    let nextRhymedWord = RhymingWord(json: word, wordIndex: self.rhymedWords.count)
//    self.rhymedWords.append(nextRhymedWord)
//    cell.wordLabel.text = nextRhymedWord.word
//    cell.numberOfSyllables.text = String(nextRhymedWord.numOfSyllables)
//    }
//    case.failure(let error):
//    print(error)
//    }
//    }
    
    //IBOutlets
    @IBOutlet weak var wordSearched: UILabel!
    @IBOutlet weak var resultsTableView: UITableView!
    var word: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        RhymService.getRhym(word: word!) { (rhymword) in
            self.rhymedWords = rhymword
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rhymeResultsCell") as! ResultsTableCellView
      let word = rhymedWords[indexPath.row]
       cell.wordLabel.text = word.word
        cell.numberOfSyllables.text = String(word.numSyllables)
        wordToSearch = word.word
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rhymedWords.count
    }
    
}


struct RhymService{
    
    static func getRhym(word: String, callback:@escaping (([RhymingWord]) -> Void)){
        
        let apiToContact = "https://api.datamuse.com/words?rel_rhy=\(word)"
        let url = URL(string: apiToContact)
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { (data, response, error) in
        
            guard let data = data else {return}
            
            let rw = try! JSONDecoder().decode([RhymingWord].self, from: data)
            callback(rw)
        }
        task.resume()
        
    }
}





