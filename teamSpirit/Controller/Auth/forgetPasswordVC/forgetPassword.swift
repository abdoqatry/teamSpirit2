//
//  forgetPassword.swift
//  teamSpirit
//
//  Created by Moe on 3/19/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class forgetPassword: BaseController {

    var mainView : forgetPassView!{
        return view as? forgetPassView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = forgetPassView()
        setView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    
    @objc func confirmCode(){
//        let vc = ConfirmCodeVC()
        let backbutton = UIBarButtonItem()
        backbutton.title = "back"
        navigationItem.backBarButtonItem = backbutton
        
        navigationController?.pushViewController(ConfirmCodeVC(), animated: true)
    }

    func setView(){
        mainView.singIn.addTarget(self, action: #selector(confirmCode), for: .touchUpInside)
    }

}
