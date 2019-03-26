//
//  ShareMatchVC.swift
//  teamSpirit
//
//  Created by Moe on 3/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ShareMatchVC: BaseController {

    var mainview : ShareMatchView! {
        return view as? ShareMatchView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ShareMatchView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        setupSideMenu()
        navigation()
    }
    
    func navigation(){
        
        navigationController?.isNavigationBarHidden = false
        title = "Matches"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "icMenu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    
    
}

extension ShareMatchVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "shareMatchCell") as? shareMatchCell {
            return cell
        }
        return shareMatchCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 160
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
