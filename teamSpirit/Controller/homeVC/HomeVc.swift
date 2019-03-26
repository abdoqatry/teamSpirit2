//
//  HomeVc.swift
//  teamSpirit
//
//  Created by Moe on 3/19/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SideMenu

class HomeVc: BaseController {

    var mainview : HomeView! {
        return view as? HomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = HomeView()
//        setnavigation()
        setupSideMenu()
        setview()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    
    
  
    func setnavigation(){
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        title = "addfdgd"
        let attributes = [ NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        let sing = UIBarButtonItem(image: UIImage(named: "سجل المتابعة"), style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem = sing
        self.navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    
    
    func setview(){
        mainview.menubutton.addTarget(self, action: #selector(handleMenuTapped), for: .touchUpInside)
    }
    

    

}
