//
//  NibloadableView.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 21/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import Foundation
//need UIKIt because we are linking this to our UIcollectionview/cell etc...
import UIKit


//Like ReuasableView this require us to confirm to this protocol and ensures we have the correct info and name

protocol NibloadableView: class {}

extension NibloadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
