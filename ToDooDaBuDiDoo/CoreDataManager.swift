//
//  CoreDataManager.swift
//  ToDooDaBuDiDoo
//
//  Created by Никита Журавлев on 05/10/2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager()
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ToDooDaBuDiDoo")
        container.loadPersistentStores { (storeDescription, err) in
            if let err = err {
                fatalError("Loading of store failed \(err)")
            }
        }
        return container
    }()
    
    func createToDo() {
        let context = persistentContainer.viewContext
        let toDo = NSEntityDescription.insertNewObject(forEntityName: "ToDo", into: context)
        
        let id = 1
        let title = "Let's do this!"
        let status = false
        
        toDo.setValue(id, forKey: "id")
        toDo.setValue(title, forKey: "title")
        toDo.setValue(status, forKey: "status")
        
        do {
            try context.save()
        } catch let err {
            print("failed to save context with new toDo: ", err)
        }
        
    }
    
    func fetchToDos() -> [ToDo] {
        let context = persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<ToDo>(entityName: "ToDo")
        
        do {
            let toDos = try context.fetch(fetchRequest)
            return toDos
        } catch let err {
            print("failed to save context with new toDo: ", err)
            
            return []
        }
    }
    
}
