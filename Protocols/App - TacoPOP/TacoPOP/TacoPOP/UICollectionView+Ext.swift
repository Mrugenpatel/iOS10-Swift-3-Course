//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 21/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibloadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
            }
        return cell
    }

}

//This is saying we will conform to the ReusableView we created.
extension UICollectionViewCell: ReusableView {}

