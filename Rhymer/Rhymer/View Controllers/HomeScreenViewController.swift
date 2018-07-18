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
        wordToSearch = searchBar.text
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    //IBOutlets home page
    @IBOutlet weak var searchBar: searchBar!
    @IBOutlet weak var recentTableView: UITableView!
    
    //dismiss Keyboard
    func search () {
        if self.searchBar.isFirstResponder {
            self.searchBar.resignFirstResponder()
        }
    }
}


