//
//  CustomVIew.swift
//  StackViewDemo
//
//  Created by hu lianghai on 2017/2/8.
//  Copyright © 2017年 hu lianghai. All rights reserved.
//

import UIKit

class CustomVIew: UIView {

    var numLabel : UILabel = UILabel.init()
    override init(frame: CGRect) {
        super.init(frame: frame)
        numLabel.center = self.center
        numLabel.textAlignment = .center
        numLabel.textColor  = UIColor.yellow
        numLabel.backgroundColor = UIColor.brown
        numLabel.frame = CGRect.init(origin: .zero, size: frame.size)
        self.addSubview(numLabel)
        
//        self.layer.borderColor = UIColor.blue.cgColor
//        self.layer.borderWidth = 2
//        self.layer.cornerRadius = 5
//        self.layer.masksToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
