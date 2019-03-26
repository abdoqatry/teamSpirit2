//
//  GroundVC.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class GroundVC: UIViewController {

    var mainview : GroundView!{
        return view as? GroundView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = GroundView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        
        
    }
    



}

extension GroundVC : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "groundCell") as? groundCell {
           
            return cell
        }
        return groundCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 180
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
