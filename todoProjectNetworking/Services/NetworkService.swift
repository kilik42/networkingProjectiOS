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
        
        let task = session.dataTask(with: url) { (data, response, error) in
            //print(data)
            if let error = error{
                debugPrint(error.localizedDescription)
                return
            }
            guard let data = data, let response = response as? HTTPURLResponse else{
                debugPrint("invalid data or response")
                return
            }
            do{
                if response.statusCode == 200 {
                    //parse successful result (todos)
                    let items = try JSONDecoder().decode(Todos.self, from: data)
                    print(items)
                    //handle error
                    
                } else{
                    //show error to user
                    let err = try JSONDecoder().decode(APIError.self, from: data)
                    
                    //handle success
                }
            }catch{
                debugPrint(error.localizedDescription)
            }
            
            
        }
        task.resume()
    }
    
    func addToDo(todo: Todo){
        
    }
    
}
