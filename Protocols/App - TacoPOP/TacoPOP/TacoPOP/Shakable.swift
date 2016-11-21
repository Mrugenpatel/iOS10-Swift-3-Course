//
//  Shakable.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 21/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//


//SHAKE function to reshuffle all taco information.
//We can then add it to ANY UIView like TacoCell
import Foundation
import UIKit

protocol Shakable {}

extension Shakable where Self: UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
