//
//  SampleTableViewCell.swift
//  StackViewTesting
//
//  Created by osanai on 2018/04/25.
//  Copyright © 2018年 osanai.sample.eventworks. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var viewC: UIView!
    
    @IBOutlet weak var viewX: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        baseView.layer.cornerRadius = 30
        baseView.clipsToBounds = true
        
        baseView.addBelowShadow()
        
//        shadowView.backgroundColor = UIColor(white: 1.0, alpha: 0.3)
        
//        shadowView.layer.shadowColor = UIColor.black.cgColor
//        shadowView.layer.shadowOffset = CGSize(width: 0, height: 0)
//        shadowView.layer.shadowOpacity = 0.9
//        shadowView.layer.shadowRadius = 15
//        shadowView.layer.shouldRasterize = true
//        shadowView.layer.rasterizationScale = UIScreen.main.scale
    }
}
