//
//  ToDoCell.swift
//  todoProjectNetworking
//
//  Created by marvin evins on 7/7/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet weak var itemLbl: UILabel!
    
    @IBOutlet weak var priorityView: UIView!
    
    func updateCell(todo: Todo){
        itemLbl.text = todo.item
        switch todo.priority{
        case 0:
                priorityView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            break
        case 1:
            priorityView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            break
        default:
            priorityView.backgroundColor =  #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            }
    }

}
