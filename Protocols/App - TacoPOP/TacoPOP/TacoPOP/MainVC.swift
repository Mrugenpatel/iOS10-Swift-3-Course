//
//  MainVC.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 18/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

//Added DataSerDel which mean this will have to confirm to that protocol
class MainVC: UIViewController, DataServiceDelegate {

//This ref to the proto in dropshadow and is link to the area we wish to effect
    @IBOutlet weak var headerView: HeaderView!
    
    @IBOutlet weak var collectionView: UICollectionView!

//This declares singleton and allows for ref ANYWHERE
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self
        ds.loadDeliciousTacoData()
//SHUFFLE here because the array confirms to MutableCollection type
        ds.tacoArray.shuffle()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()
 
//OLD WAY to make nib work
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
//NEW WAY using protocols and extensions
        collectionView.register(TacoCell.self)

    }

//This is us confirming to the DataSerDel needs
    func deliciousTacoDataLoaded() {
        print("Delious Taco Data Loaded")
//We would normally do a reload here BUT we only have local data so no need
        collectionView.reloadData()
    }
    
}

//We will need to confirm to these types
extension MainVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
//defining no of section
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
//defining no of images
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
//defining how many loade on each screen
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

//OLD WAY
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as?
//            TacoCell {
//            cell.configurerSell(taco: ds.tacoArray[indexPath.row])
//            return cell
//        }
//        return UICollectionViewCell()

        
//NEW WAY using protocols/extensions
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }

//SHAKABLE func added to give animation
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
        cell.shake()
        }
    }
    
//Defining size of cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}


















