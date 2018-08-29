//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Sam Leswell on 29/08/2018.
//  Copyright © 2018 Sam Leswell. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()

    
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func addTapped(_ sender: Any) {
    
            let toDo = ToDo()
            toDo.name = titleTextField.text!
            toDo.important = importantSwitch.isOn
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        
        navigationController?.popViewController(animated: true)
        
        }


        
    }

   

    



