//
//  PlayerPageVC.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PlayerPageVC: UIViewController {

    var mainView : PlayerPageView!{
        return view as? PlayerPageView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = PlayerPageView()
       
    }
    

 

}
