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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
