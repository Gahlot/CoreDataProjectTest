//
//  PersistanceStorage.swift
//  CoreDataProjectTest
//
//  Created by macadmin on 08/01/22.
//

import Foundation
import CoreData

class PersistanceStore {
    static let shared = PersistanceStore()
    
    private init() {}
    
    lazy var persistaneContainer: NSPersistentContainer =  {
        let persistanceContainer = NSPersistentContainer(name: "CoreDataProjectTest")
        persistanceContainer.loadPersistentStores { storeDescription, error in
            if let error = error {
                fatalError("Unable to load container= \(error.localizedDescription)")
            }
            print("Store Description --> \(storeDescription)")
        }
        return persistanceContainer
    }()
    
    lazy var context = persistaneContainer.viewContext
    
    func saveContext() {
        if context.hasChanges {
            do{
                try context.save()
            }catch{
                print("Unable to save - \(error.localizedDescription)")
            }
        }
    }
}
