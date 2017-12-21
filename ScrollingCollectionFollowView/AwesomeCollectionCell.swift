//
//  AwesomeCollectionCell.swift
//  ScrollingCollectionFollowView
//
//  Created by tanaka.kenji on 2017/12/21.
//  Copyright © 2017年 tanaka.kenji. All rights reserved.
//

import UIKit

class AwesomeCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var awesomeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.backgroundColor = .gray
        awesomeLabel.text = "Awesome Item"
    }
}
