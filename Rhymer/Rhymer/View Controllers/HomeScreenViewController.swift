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

class HomeScreenViewController: UIViewController, UITextFieldDelegate {
    
    //IBOutlets home page
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var recentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Constantly update the global variable "wordToSearch" here with the contents of the search bar
        
        self.searchBar.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    //dismiss Keyboard
    func search () {
        if self.searchBar.isFirstResponder {
            self.searchBar.resignFirstResponder()
           
        }
        guard let searchBar = self.searchBar.text else { return }
        wordToSearch = searchBar

    }
    

    
    
    
    
    // dont touch
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
            
        case "wordSearched":
        //1
            let destination = segue.destination as! ResultsScreenViewController
            
        default:
            print("error")
        }
    }
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {
        
    }
    
}
