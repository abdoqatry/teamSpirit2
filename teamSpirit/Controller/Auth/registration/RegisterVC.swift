//
//  RegisterVC.swift
//  teamSpirit
//
//  Created by Moe on 3/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class RegisterVC: BaseController {

    var mainView : RegisterView!{
        return view as? RegisterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = RegisterView()
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .black
        setView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
    }
    
    @objc func registBut(){
        let backbutton = UIBarButtonItem()
        backbutton.title = "back"
        navigationItem.backBarButtonItem = backbutton
        navigationController?.pushViewController(ConfirmRegisVC(), animated: true)
    }
    @objc func accountBuuton(){
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func ischeck(){
        if mainView.notcheckButton.isHidden == true{
            mainView.notcheckButton.isHidden = false
            mainView.checkButton.isHidden = true
            
        }
        
    }
    
    @objc func notCheck(){
        if mainView.checkButton.isHidden == true {
            mainView.checkButton.isHidden = false
            mainView.notcheckButton.isHidden = true
            
        }
    }

    
    func setView(){
        mainView.singIn.addTarget(self, action: #selector(registBut), for: .touchUpInside)
        mainView.acountButt.addTarget(self, action: #selector(accountBuuton), for: .touchUpInside)
        mainView.notcheckButton.addTarget(self, action: #selector(notCheck), for: .touchUpInside)
        mainView.checkButton.addTarget(self, action: #selector(ischeck), for: .touchUpInside)
    }
  

}
