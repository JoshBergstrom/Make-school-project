//
//  NotesViewController.swift
//  Rhymer
//
//  Created by Melissa Flores on 7/19/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit

class NotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var notesTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notesTableView.dequeueReusableCell(withIdentifier: "notesCell") as! NoteTableViewCell
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
