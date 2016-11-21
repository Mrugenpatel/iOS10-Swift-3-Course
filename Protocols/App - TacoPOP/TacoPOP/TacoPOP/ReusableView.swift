//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 21/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import Foundation
//need UIKit because we are linking this to our UICollectionview/cell
import UIKit


//This helps keeping up with Identifiers for the cells. This protocol ensures we have the correct Identifier because adhearing to the protocol give it the same name as the cell....i think i get this...

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
