//
//  CoreDataHelper.swift
//  Rhymer
//
//  Created by Arya Gharib and Josh Bergstrom on 7/17/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct CoreDataHelper {
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Something went wrong with NSManagedObjectContext")
        }
        
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    
    static func newWord() -> Word {
        let word = NSEntityDescription.insertNewObject(forEntityName: "Word", into: context) as! Word
        return word
    }
    //done from here to text comment
    static func saveToFavorites() {
        do {
            try context.save()
        } catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    
    static func unFavorite(wordToDelete word: Word) {
        context.delete(word)
    }
    
    static func retrieveFavorites() -> [Word] {
        do {
            let fetchRequest = NSFetchRequest<Word>(entityName: "Word")
            let results = try context.fetch(fetchRequest)
            return results
        } catch let error {
            print(error)
            return []
        }
    }
    // end done section
}
