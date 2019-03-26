//
//  PoliceVC.swift
//  teamSpirit
//
//  Created by Moe on 3/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PoliceVC: BaseController {

    var mainview : PoliceView!{
        return view as? PoliceView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = PoliceView()
       setupSideMenu()
        navigation()
        
    }
    
    func navigation(){
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .black
        let attributes = [ NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        //        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 90.0)
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        title = "Police and condition"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "icMenu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    

    

}
