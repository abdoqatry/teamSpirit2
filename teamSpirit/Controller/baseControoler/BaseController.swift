//
//  BaseController.swift
//  teamSpirit
//
//  Created by Moe on 3/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SideMenu

class BaseController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        
        
        
    }
    
    final func setupNavigationBar() {
        self.navigationController?.navigationBar.barTintColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1);        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        let attributes = [ NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        //        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 90.0)
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backItem?.title = ""
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icBack")
        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icBack")
    }
    //    Mark:-  side menu func
     func setupSideMenu() {
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: SideMenuVC())
        
        //menuRightNavigationController.delegate = self as? UINavigationControllerDelegate
        
        
        SideMenuManager.default.menuLeftNavigationController = menuRightNavigationController
        
        //          SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.view)
        //  SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.view)
        // (Optional) Prevent status bar area from turning black when menu appears:
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuAnimationBackgroundColor = nil
        SideMenuManager.default.menuAnimationFadeStrength = 0
        SideMenuManager.default.menuDismissOnPush = true
        SideMenuManager.default.menuPushStyle = .defaultBehavior
        
        SideMenuManager.default.menuAllowPushOfSameClassTwice = true
        
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        //        SideMenuManager.default.menuFadeStatusBar = true
        SideMenuManager.default.menuWidth = max(round(min((view.frame.width), (view.frame.height)) * 0.85), 300)
    }
    @objc func handleMenuTapped() {
        
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
//    func setupSideMenu(){
//        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: SideMenuVC())
//        
//        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
//        //        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
//        //        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
//        SideMenuManager.default.menuFadeStatusBar = false
//        SideMenuManager.default.menuWidth = round(view.frame.width * 0.7)
//        SideMenuManager.default.menuPresentMode = .menuDissolveIn
//    }
    
//    @objc func showSideMenu(){
////        if UserDefaultsManager.shared.language == .english {
//            present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
////        } else {
////            present(SideMenuManager.default.menuRightNavigationController!, animated: true, completion: nil)///Right
////        }
//    }
    
}
