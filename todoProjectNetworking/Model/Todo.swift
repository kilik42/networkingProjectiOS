//
//  Todo.swift
//  todoProjectNetworking
//
//  Created by marvin evins on 7/9/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import Foundation

struct Todos: Codable{
    let items: Array<Todo>
}



struct Todo: Codable{
    let item: String
    let priority: Int
    
    
}
