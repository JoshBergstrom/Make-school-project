//
//  NoteTableViewCell.swift
//  Rhymer
//
//  Created by Melissa Flores on 7/20/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    @IBOutlet weak var noteTitle: UILabel!
    @IBOutlet weak var numSyllableLable: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var numOfSyll: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
