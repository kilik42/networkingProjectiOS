//
//  ViewController.swift
//  todoProjectNetworking
//
//  Created by marvin evins on 7/7/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class TodoVC: UIViewController , UITableViewDataSource, UITableViewDelegate{
 

    @IBOutlet weak var toDoItemTxt: UITextField!
    
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    
    @IBOutlet weak var todoTable: UITableView!
    
    //how do we find the number of rows in a table
    var todos = Array<Todo>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        todoTable.delegate = self
        todoTable.dataSource = self
        
       getToDos()
    }
    
    func getToDos(){
        NetworkService.shared.getTodos { (todos) in
                   //debugPrint(todos)
            self.todos = todos.items
            self.todoTable.reloadData()
            
               }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier:  "TodoCell") as? ToDoCell {
            cell.updateCell(todo: todos[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
        
     }
     
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    
    
    @IBAction func addToDo(_ sender: Any) {
        
        
    }
    
    
    
    
}

