//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Sam Leswell on 29/08/2018.
//  Copyright © 2018 Sam Leswell. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        let eggs = ToDo ()
        eggs.name = "Buy Eggs"
        eggs.important = true
        
        let dog = ToDo ()
        dog.name = "Walk the dog"
        
        let cheese = ToDo ()
        cheese.name = "Eat Cheese"
        
        
        
        return [eggs, dog, cheese]
    }

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count
    }

    override func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {let cell = tableview.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
    
       let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
        cell.textLabel?.text = toDo.name
        }
    
        return cell
    
    }
}