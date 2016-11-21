//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 21/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

//added in Nibloadable thing which is a protocol NEW way to make cells work
class TacoCell: UICollectionViewCell, NibloadableView {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
//This ref the enum in taco.swift file. Again using image name convention for ease
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }

}
