//
//  AddToDoViewController.swift
//  ToDoListUpdated
//
//  Created by Tetiana Borysova on 05.07.22.
//

import UIKit

class AddToDoViewController: UIViewController {
    var toDoTableViewController: ToDoTableViewController?=nil

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.priority = prioritySegment.selectedSegmentIndex
        if let name = nameTextField.text {
           newToDo.name = name
        }
        
        toDoTableViewController?.toDos.append(newToDo)
        toDoTableViewController?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
