//
//  Persistence.swift
//  Sesion05c
//
//  Created by Carlos Gabriel Baca Manrique on 12/10/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Sesion05c")
        container.loadPersistentStores {_, error in
            if let e = error as NSError? {
                fatalError("Error al conectarse a la BD: \(e)")
            }
        }
    }
}
