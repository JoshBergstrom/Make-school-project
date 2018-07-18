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
        guard let wordToSearch = wordToSearch else {
            fatalError("No word has been searched")
        }
        wordSearched.text = wordToSearch

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rhymeResultsCell") as! ResultsTableCellView
        
    }
    
}


