//
//  ViewController.swift
//  teamSpirit
//
//  Created by Moe on 3/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class LoginVC: BaseController {

    var mainView : LoginView!{
        return view as? LoginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = LoginView()
//        navigationController?.navigationBar.isHidden = true
        
        setTarget()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    
    @objc func presentRegistration(){
        navigationController?.pushViewController(RegisterVC(), animated: true)
    }
    @objc func prsentForgetPass(){
        navigationController?.pushViewController(forgetPassword(), animated: true)
//        present(forgetPassword(), animated: true, completion: nil)
    }
    @objc func prsentHome(){
        navigationController?.pushViewController(HomeVc(), animated: true)
    }
    
    func setTarget(){
        mainView.acountButt.addTarget(self, action: #selector(presentRegistration), for: .touchUpInside)
        mainView.forgetPass.addTarget(self, action: #selector(prsentForgetPass), for: .touchUpInside)
        mainView.singIn.addTarget(self, action: #selector(prsentHome), for: .touchUpInside)
    }

}

