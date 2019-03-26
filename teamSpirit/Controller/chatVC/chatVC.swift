//
//  chatVC.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit


class chatVC: UIViewController {

    var mainview : chatView!{
        return view as? chatView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = chatView()
        mainview.chatTableView.delegate = self
        mainview.chatTableView.dataSource = self
        mainview.chatTableView.rowHeight = UITableView.automaticDimension
        mainview.chatTableView.estimatedRowHeight = UITableView.automaticDimension
        
    }
    


}

extension chatVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell") as? ChatCell{
            cell.selectionStyle = .none
            return cell
        }
        return ChatCell()
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return  100
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
