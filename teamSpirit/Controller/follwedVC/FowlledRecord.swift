//
//  FowlledRecord.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FowlledRecord: UIViewController {

    var mainview : FolloweView!{
        return view as? FolloweView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = FolloweView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        
        
    }
    



}

extension FowlledRecord : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = tableView.dequeueReusableCell(withIdentifier: "FollowedCell") as? FollowedCell{
            return cell
        }
        return FollowedCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
}

}
