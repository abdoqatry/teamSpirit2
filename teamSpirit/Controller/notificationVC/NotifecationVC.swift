//
//  NotifecationVC.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class NotifecationVC: BaseController {

    
    var mainview : NotificationView!{
        return view as? NotificationView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = NotificationView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        setupSideMenu()
        navigation()
        
    }
    func navigation(){
        
        navigationController?.isNavigationBarHidden = false
        title = "Notification"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "icMenu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }



}

extension NotifecationVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NoteficationCell") as? NoteficationCell {
            return cell
        }
        return NoteficationCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
