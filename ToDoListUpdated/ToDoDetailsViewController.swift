//
//  ToDoDetailsViewController.swift
//  ToDoListUpdated
//
//  Created by Tetiana Borysova on 05.07.22.
//

import UIKit

class ToDoDetailsViewController: UIViewController {
    

    
    var toDo = ToDo()

    @IBOutlet weak var toDoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if toDo.priority == 1{
        toDoLabel.text = "🧐 Wichtig ❗️" + toDo.name }
        else if toDo.priority == 2{ toDoLabel.text = " 🤓 Sehr Wichtig ❗️❗️  " + toDo.name
        } else{
        toDoLabel.text = toDo.name }


        // Do any additional setup after loading the view.
    }
    

    @IBAction func doneTapped(_ sender: Any) {
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
