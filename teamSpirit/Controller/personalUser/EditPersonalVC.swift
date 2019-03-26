//
//  EditPersonalVC.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditPersonalVC: UIViewController {

    var mainview : EditPersonaluserView!{
        return view as? EditPersonaluserView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = EditPersonaluserView()
      mainview.editButton.addTarget(self, action: #selector(presentswip), for: .touchUpInside)
        
    }
    
    
    @objc func presentswip(){
        let modalViewController = SweepVC()
        modalViewController.modalPresentationStyle = .overCurrentContext
        present(modalViewController, animated: true, completion: nil)
        
    }

}
