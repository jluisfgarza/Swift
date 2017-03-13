//
//  Empleado+CoreDataProperties.swift
//  Core Data
//
//  Created by alumno on 3/13/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Empleado {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Empleado> {
        return NSFetchRequest<Empleado>(entityName: "Empleado");
    }

    @NSManaged public var sueldo: Double
    @NSManaged public var nombre: String
    @NSManaged public var ident: NSDecimalNumber

}
