//
//  AboutusVC.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AboutusVC: BaseController {

    var mainview : AboutusView!{
        return view as? AboutusView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = AboutusView()
        setupSideMenu()
        navigation()
//        title = "About team spirit"
    }
    
    func navigation(){
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .black
        let attributes = [ NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        //        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 90.0)
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        title = "About team spirit"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "icMenu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }


}
