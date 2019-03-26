//
//  matchSerchVc.swift
//  teamSpirit
//
//  Created by Moe on 3/25/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class matchSerchVc: BaseController {

    var mainview : MatchserchView!{
        return view as? MatchserchView
    }
    var selectIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = MatchserchView()
        mainview.Daycollection.delegate = self
        mainview.Daycollection.dataSource = self
        
    }
    



}

extension matchSerchVc : UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DayCell", for: indexPath) as? DayCell {
            return cell
        }
        
        return DayCell()
        
    }
    

    

    
    
    
    
}
