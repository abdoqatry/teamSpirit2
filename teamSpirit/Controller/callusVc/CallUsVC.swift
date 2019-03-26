//
//  CallUsVC.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CallUsVC: UIViewController {

    var mainview : CallusView!{
        return view as? CallusView 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = CallusView()
        
    }
    



}
