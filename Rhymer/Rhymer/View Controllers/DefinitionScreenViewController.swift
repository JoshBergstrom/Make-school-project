//
//  DefinitionScreenViewController.swift
//  Rhymer
//
//  Created by Melissa Flores on 7/19/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit

class DefinitionScreenViewController: UIViewController {
    //@IBOutlets
    @IBOutlet weak var wordTapped: UILabel!
    @IBOutlet weak var definitionText: UILabel!
    @IBOutlet weak var noteText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let wordDef = WordDefinition(wordToDefine: wordToSearch!, label: self.definitionText)


    }
    
}
