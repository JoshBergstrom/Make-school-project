//
//  File.swift
//  Rhymer
//
//  Created by Josh Bergstrom on 7/18/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import UIKit

class searchBar: UITextField {
    
    var searchButtonPressed: (()-> Void)?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let searchButton = UIBarButtonItem(title: "Search", style: .done, target: self, action: #selector(searchButtonTapped(_:)))
        toolbar.items = [leadingFlex, searchButton, trailingFlex]
        
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    @objc private func searchButtonTapped(_ sender: UIBarButtonItem) {
        searchButtonPressed?()
    }
}
