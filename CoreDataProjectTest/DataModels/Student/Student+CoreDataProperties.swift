//
//  Student+CoreDataProperties.swift
//  CoreDataProjectTest
//
//  Created by macadmin on 08/01/22.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var lesson: Lesson?

}

extension Student : Identifiable {

}
