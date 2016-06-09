//
//  DetailCollectionViewCell.swift
//  Project 03 - CarouselEffect
//
//  Created by 陈炯 on 16/6/9.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class DetailCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var detail: Detail! {
        didSet {
            titleLabel.text = detail.title
            detailImageView.image = detail.featuredImage
        }
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
}
