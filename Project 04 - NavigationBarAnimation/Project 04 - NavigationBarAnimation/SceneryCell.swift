//
//  SceneryCell.swift
//  Project 04 - NavigationBarAnimation
//
//  Created by 陈炯 on 16/6/13.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

struct scenery {
    let name: String
    let image: String
    
    init(name: String, image: String) {
        
        self.name = name
        self.image = image
    }
}

class SceneryCell: UITableViewCell {

    
    @IBOutlet weak var sceneryImageView: UIImageView!
    @IBOutlet weak var sceneryNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
