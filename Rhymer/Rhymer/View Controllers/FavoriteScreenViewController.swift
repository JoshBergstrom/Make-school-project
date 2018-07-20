//
//  FavoriteScreenViewController.swift
//  Rhymer
//
//  Created by Melissa Flores on 7/19/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit

class FavoriteScreenViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var favoritesTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoritesTableView.dequeueReusableCell(withIdentifier: "favoritesCell") as! FavoritesTableViewCell
        cell.wordAndWordSearched.text = "Coming soon!"
        cell.numberOfSyllablesLabel.text = ""
        cell.numberSyllabled.text = ""
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
