//
//  CompletedViewController.swift
//  ToDo List
//
//  Created by Sam Leswell on 29/08/2018.
//  Copyright © 2018 Sam Leswell. All rights reserved.
//

import UIKit

class CompletedViewController: UIViewController {
    
var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCoreData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        toDoLabel.text = selectedToDo?.name
    }
    
    @IBOutlet weak var toDoLabel: UILabel!
    @IBAction func completedTapped(_ sender: Any) {

        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
           
            if let theToDo = selectedToDo{
            context.delete(theToDo)
                navigationController?.popViewController(animated: true)
        }

/* var index = 0
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name {
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
        index += 1
        }
  */
        
        
    }
    }
}


    



