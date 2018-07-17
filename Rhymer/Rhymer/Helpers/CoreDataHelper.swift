//
//  CoreDataHelper.swift
//  Rhymer
//
//  Created by Arya Gharib on 7/17/18.
//  Copyright © 2018 Sina Gharib. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct CoreDataHelper {
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { fatalError("error") }
    }
}
