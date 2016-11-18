//
//  MainVC.swift
//  TacoPOP
//
//  Created by Tomas-William Haffenden on 18/11/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

//This refer to the proto in dropshadow and is link to the area we wish to efeect
    @IBOutlet weak var headerView: HeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView.addDropShadow()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
