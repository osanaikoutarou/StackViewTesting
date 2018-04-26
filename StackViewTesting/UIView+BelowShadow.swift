//
//  UIView+BelowShadow.swift
//  StackViewTesting
//
//  Created by osanai on 2018/04/26.
//  Copyright © 2018年 osanai.sample.eventworks. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addBelowShadow() {
        let shadowView = ShadowView(frame:self.frame)
        shadowView.addShadow(shadowColor: UIColor.black,
                             shadowOffset: .zero,
                             shadowOpacity: 0.9,
                             shadowRadius: 10,
                             cornerRadius: 30)
        
        if let superview = self.superview {
            superview.insertSubview(shadowView, belowSubview: self)
            
            shadowView.backgroundColor = UIColor.red
            
//            for (NSLayoutConstraint *c in superview.constraints) {
//                if (c.firstItem == self || c.secondItem == self) {
//                    [superview removeConstraint:c];
//                }
//            }
//            superview = superview.superview;
//        }
//
//        [self removeConstraints:self.constraints];
            
            shadowView.removeConstraints(shadowView.constraints)
            superview.removeConstraints(
                superview.constraints.filter {
                    ($0.firstItem!.isEqual(shadowView) || ($0.secondItem!.isEqual(shadowView)))
                }
            )
            
            let leadingLC = NSLayoutConstraint(item: shadowView,
                                             attribute: .leading,
                                             relatedBy: .equal,
                                             toItem: self,
                                             attribute: .leading,
                                             multiplier: 1.0,
                                             constant: 0)
            let topLC = NSLayoutConstraint(item: shadowView,
                                         attribute: .top,
                                         relatedBy: .equal,
                                         toItem: self,
                                         attribute: .top,
                                         multiplier: 1.0,
                                         constant: 0)
            let widthLC = NSLayoutConstraint(item: shadowView,
                                             attribute: .width,
                                             relatedBy: .equal,
                                             toItem: self,
                                             attribute: .width,
                                             multiplier: 1.0,
                                             constant: 0)
            let heightLC = NSLayoutConstraint(item: shadowView,
                                              attribute: .height,
                                              relatedBy: .equal,
                                              toItem: self,
                                              attribute: .height,
                                              multiplier: 1.0,
                                              constant: 0)
            
            leadingLC.priority = UILayoutPriority(rawValue: 1)
            topLC.priority = UILayoutPriority(rawValue: 1)
            widthLC.priority = UILayoutPriority(rawValue: 1)
//            heightLC.priority = UILayoutPriority(rawValue: 1)
            
            superview.addConstraints([leadingLC,topLC,widthLC,heightLC])

            
//
//
//
//            superview.addConstraint([NSLayoutConstraint(item: shadowView,
//                                                        attribute: .centerX,
//                                                        relatedBy: .equal,
//                                                        toItem: self,
//                                                        attribute: .centerX,
//                                                        multiplier: 1.0,
//                                                        constant: 0))
//
//            let cons:[NSLayoutConstraint] = ,
//                                             NSLayoutConstraint(item: shadowView,
//                                                                attribute: .centerY,
//                                                                relatedBy: .equal,
//                                                                toItem: self,
//                                                                attribute: .centerY,
//                                                                multiplier: 1.0,
//                                                                constant: 0),
//                                             NSLayoutConstraint(item: shadowView,
//                                                                attribute: .width,
//                                                                relatedBy: .equal,
//                                                                toItem: self,
//                                                                attribute: .width,
//                                                                multiplier: 1.0,
//                                                                constant: 0),
//                                             NSLayoutConstraint(item: shadowView,
//                                                                attribute: .height,
//                                                                relatedBy: .equal,
//                                                                toItem: self,
//                                                                attribute: .height,
//                                                                multiplier: 1.0,
//                                                                constant: 0)]
//
//            let cons2 = cons.map({ (constraint) -> NSLayoutConstraint in
//                constraint.priority = UILayoutPriority(rawValue: 250)
//                return constraint
//            })
//            superview.addConstraints(cons2)
            
//            self.setContentHuggingPriority(.defaultLow, for: .vertical)
//            self.setContentHuggingPriority(.defaultLow, for: .horizontal)
//            self.setContentCompressionResistancePriority(.required, for: .vertical)
//            self.setContentCompressionResistancePriority(.required, for: .horizontal)
            
            
//            shadowView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//            shadowView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//            shadowView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//            shadowView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
            
//            superview.addConstraints()
            
        }
    }
    
}
