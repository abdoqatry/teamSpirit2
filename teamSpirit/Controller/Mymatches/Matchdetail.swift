//
//  Matchdetail.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class Matchdetail: UIViewController {

    var maiview : MatchdetailView!{
        return view as? MatchdetailView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = MatchdetailView()
        maiview.mainTableView.delegate = self
        maiview.mainTableView.dataSource = self
        maiview.evalutielabel2.addTarget(self, action: #selector(presen), for: .touchUpInside)
        
    }
    

    @objc func presen(){
        let modalViewController = EvaluteVC()
        modalViewController.modalPresentationStyle = .overCurrentContext
        present(modalViewController, animated: true, completion: nil)
    }

}

extension Matchdetail : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "playerDetailCell") as? playerDetailCell {
            return cell
        }
        return playerDetailCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 30
    }
    
    
    
}

