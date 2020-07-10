//
//  ViewController.swift
//  todoProjectNetworking
//
//  Created by marvin evins on 7/7/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class TodoVC: UIViewController {

    @IBOutlet weak var toDoItemTxt: UITextField!
    
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NetworkService.shared.getTodos()    
    }
    
    

    @IBAction func addToDo(_ sender: Any) {
        
        
    }
    
    
    
    
}

