//
//  FriendsVC.swift
//  teamSpirit
//
//  Created by Moe on 3/20/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FriendsVC: BaseController {

    var mainView : FriendsView!{
        return view as? FriendsView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = FriendsView()
        mainView.mainTableView.delegate = self
        mainView.mainTableView.dataSource = self
        setupSideMenu()
        navigation()
        title = "friends"
    }
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
    }
    
    func navigation(){
       
        navigationController?.isNavigationBarHidden = false
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "icMenu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    
    

 

}

extension FriendsVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = mainView.mainTableView.dequeueReusableCell(withIdentifier: "FriendsCell") as? FriendsCell{
            return cell
        }
        return FriendsCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
    }
    
    
    
    
}
