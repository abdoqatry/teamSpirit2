//
//  SideMenuVC.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SideMenuVC: BaseController {

    
    var mainview : SideMenuView!{
        return view as? SideMenuView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SideMenuView()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .clear
        view.isOpaque = false
        mainview.friendsView.isUserInteractionEnabled = true
        mainview.policeView.isUserInteractionEnabled = true
        mainview.aboutView.isUserInteractionEnabled = true
        mainview.logoView.isUserInteractionEnabled = true
        mainview.matchesView.isUserInteractionEnabled = true
        mainview.noteficationtView.isUserInteractionEnabled = true
        mainview.inviteView.isUserInteractionEnabled = true
        setview()
        
    }
    
    @objc func friends(){

        navigationController?.pushViewController(FriendsVC(), animated: true)
    }
    @objc func police(){
        navigationController?.pushViewController(PoliceVC(), animated: true)
    }
    
    @objc func aboutus(){
    navigationController?.pushViewController(AboutusVC(), animated: true)
}
    @objc func Home(){
        navigationController?.pushViewController(HomeVc(), animated: true)
    }
    @objc func matche(){
        navigationController?.pushViewController(MyMatchesVC(), animated: true)
    }
    @objc func notification(){
        navigationController?.pushViewController(NotifecationVC(), animated: true)
    }
    @objc func share(){
        navigationController?.pushViewController(ShareMatchVC(), animated: true)
    }
    
    func setview (){
        mainview.friendsView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.friends)))
        mainview.policeView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.police)))
        mainview.aboutView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.aboutus)))
        mainview.logoView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.Home)))
        mainview.matchesView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.matche)))
        mainview.noteficationtView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.notification)))
        mainview.inviteView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.share)))
        
    }
    



}
