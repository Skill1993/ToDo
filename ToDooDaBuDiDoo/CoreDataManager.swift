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
    
    func createToDo(id:Double, title:String, status: Bool) {
        let context = persistentContainer.viewContext
        let toDo = NSEntityDescription.insertNewObject(forEntityName: "ToDo", into: context)
        
        toDo.setValue(id, forKey: "id")
        toDo.setValue(title, forKey: "title")
        toDo.setValue(status, forKey: "status")
        
        do {
            try context.save()
        } catch let err {
            print("failed to save context with new toDo: ", err)
        }
        
    }
    
    func deleteToDo(id: Double) {
        let context = persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<ToDo>(entityName: "ToDo")
        do {
            let toDos = try context.fetch(fetchRequest)
            toDos.forEach { (fetchedToDo) in
                if fetchedToDo.id == id {
                    context.delete(fetchedToDo)
                }
            }
        } catch let err {
            print("failed fetch toDos or delete toDo from context", err)
        }
        
        //delete toDo with matching request
    }
    
    func fetchToDo(title: String) -> ToDo? {
        let context = persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<ToDo>(entityName: "ToDo")
        var toDo: ToDo!
        do {
            let toDos = try context.fetch(fetchRequest)
            toDos.forEach { (fetchedToDo) in
                if fetchedToDo.title == title {
                    toDo = fetchedToDo
                }
            }
        } catch let err {
            print("failed to fetch toDo to update", err)
        }
        
        return toDo
    }
    
    func fetchToDos() -> [ToDo] {
        let context = persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<ToDo>(entityName: "ToDo")
        
        do {
            let toDos = try context.fetch(fetchRequest)
            return toDos
        } catch let err {
            print("failed to fetch toDos from context", err)
            return []
        }
    }
    
}
