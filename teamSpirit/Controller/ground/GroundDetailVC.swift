//
//  GroundDetailVC.swift
//  teamSpirit
//
//  Created by Moe on 3/22/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class GroundDetailVC: UIViewController {

    var mainview : GroundDetailsView!{
        return view as? GroundDetailsView
    }
    
    var images : [String] = ["layer15","layer16","layer15"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = GroundDetailsView()
        mainview.mainCollectionView.delegate = self
        mainview.mainCollectionView.dataSource = self
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainCollectionView.isPagingEnabled = true
        mainview.mainCollectionView.isScrollEnabled = true
        mainview.pagecontrol.numberOfPages = images.count
      
        
    }
    
    
    

    
    



}


extension GroundDetailVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return images.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroundimageCell", for: indexPath) as? GroundimageCell {
            
            
            return cell
        }
        return GroundimageCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return .init(width: view.frame.width , height: 160)

    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.mainview.pagecontrol.currentPage = indexPath.section
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
      let pageWidth = self .mainview.mainCollectionView.frame.size.width
        mainview.pagecontrol.currentPage = Int(mainview.mainCollectionView.contentOffset.x / pageWidth)
    }
    

    
}

extension GroundDetailVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "playenameCell") as? playenameCell {
            return cell
        }
        return playenameCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 30
    }
    
    
    
}
