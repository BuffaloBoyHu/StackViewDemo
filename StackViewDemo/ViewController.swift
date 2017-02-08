//
//  ViewController.swift
//  StackViewDemo
//
//  Created by hu lianghai on 2017/2/8.
//  Copyright © 2017年 hu lianghai. All rights reserved.
//  参考blog ： http://www.jianshu.com/p/f86d6b16918b

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        self.stackViewDemo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stackViewDemo() {
        // uistackview 没有UI所以不会显示只会显示子视图
        let stackView : UIStackView = UIStackView.init(frame: .init(origin: .zero, size: self.view.bounds.size))
        stackView.axis = .horizontal // 方向
        stackView.alignment = .center // 子视图的对齐方式
        stackView.distribution = .fillEqually // 子视图的拉伸缩放方式(有些像是调整子视图之间的间距)
        stackView.spacing = 10
        self.view.addSubview(stackView)
        for index in 0...3 {
            let subview = CustomVIew.init(frame: .init(origin: .zero, size: .init(width: 20, height: 20)))
            subview.numLabel.text = "\(index)"
            // addArrangedSubview 方法只是用来通过stackview来管理子视图的布局约束 并没有真正的添加的视图上面
            stackView.addArrangedSubview(subview)
            stackView.addSubview(subview)
        }
    }


}

