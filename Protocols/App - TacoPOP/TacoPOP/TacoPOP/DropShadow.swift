//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 18/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import Foundation
import UIKit

//Once protocol has been defined, extensions can then be added for functionality
protocol DropShadow {}

//this can be constrained to a certain type ie UIView - this is way more like CSS and allows for all the tiny chnages we might want.
extension DropShadow where Self:UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}

