//
//  CoreDataHelper.swift
//  MakeSchoolNotes
//
//  Created by Kankuro Kano on 2017/08/04.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataHelper {
    
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let persistentContainer = appDelegate.persistentContainer
    static let managedContext = persistentContainer.viewContext
    //static methods will go here
    
    static func newData() -> Data {
        let Data = NSEntityDescription.insertNewObject(forEntityName: "Data", into: managedContext) as! Data
        return Data
    }
    
    
    static func saveData() {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
    }
    
    static func retrieveData() -> [Data] {
        let fetchRequest = NSFetchRequest<Data>(entityName: "Data")
        do {
            let results = try managedContext.fetch(fetchRequest)
            return results
        } catch let error as NSError {
            print("Could not fetch \(error)")
        }
        return []
    }
    
    
    
    
    
    
}
