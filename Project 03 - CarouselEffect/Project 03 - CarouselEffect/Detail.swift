//
//  Detail.swift
//  Project 03 - CarouselEffect
//
//  Created by 陈炯 on 16/6/9.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class Detail {
    var title = ""
    var featuredImage: UIImage!
    
    init(title: String, featuredImage: UIImage!) {
        
        self.title = title
        self.featuredImage = featuredImage
    }
    
    static func createDetail() -> [Detail] {
        
        return [
            Detail(title: "Boommmm The king", featuredImage: UIImage(named: "23-1")),
            Detail(title: "HeHe Superman", featuredImage: UIImage(named: "23-2")),
            Detail(title: "Oh My Tracy", featuredImage: UIImage(named: "23-3")),
            Detail(title: "WOW Black Mabma", featuredImage: UIImage(named: "23-7")),
            Detail(title: "Penny", featuredImage: UIImage(named: "23-8")),
            Detail(title: "Look UFO", featuredImage: UIImage(named: "23-9")),
            Detail(title: "Holy shit, he just fly to the air", featuredImage: UIImage(named: "23-4"))
        
        ]
    }
}