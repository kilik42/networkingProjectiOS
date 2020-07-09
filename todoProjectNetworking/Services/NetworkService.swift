//
//  NetworkService.swift
//  todoProjectNetworking
//
//  Created by marvin evins on 7/9/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import Foundation

class NetworkService{
    static let shared = NetworkService()
    
    let URL_BASE = "https://localhost:3003"
    let URL_ADD_TODO = "/add"
    
    let session = URLSession(configuration: .default)
    
    
    func  getTodos(){
        let url = URL(string: "\(URL_BASE)")!
        
    }
    
    func addToDo(todo: Todo){
        
    }
    
}
