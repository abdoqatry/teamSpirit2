//
//  MatchserchView.swift
//  teamSpirit
//
//  Created by Moe on 3/25/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class MatchserchView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var dayimage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "twitter1")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var dayLabe : UILabel = {
       let label = UILabel()
        label.text = "day and time"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.CairoBold(of: 9)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timeImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "soccerCopy-1")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var timeLabe : UILabel = {
        let label = UILabel()
        label.text = "Start Match"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.CairoBold(of: 9)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var Daycollection: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(DayCell.self, forCellWithReuseIdentifier: "DayCell")
        coll.translatesAutoresizingMaskIntoConstraints = false
        return coll
    }()
    
    lazy var startTimeCollection: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(shareMatchCell.self, forCellWithReuseIdentifier: "shareMatchCell")
        coll.translatesAutoresizingMaskIntoConstraints = false
        return coll
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setview()
        
    }
    
    func setview(){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(dayimage)
        NSLayoutConstraint.activate([
            dayimage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),
            dayimage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            dayimage.heightAnchor.constraint(equalToConstant: 15),
            dayimage.widthAnchor.constraint(equalToConstant: 15)
            ])
        mainView.addSubview(dayLabe)
        NSLayoutConstraint.activate([
            dayLabe.topAnchor.constraint(equalTo: dayimage.bottomAnchor, constant: 0),
            dayLabe.leadingAnchor.constraint(equalTo: dayimage.leadingAnchor, constant: 0),
            dayLabe.widthAnchor.constraint(equalToConstant: 40),
            dayLabe.heightAnchor.constraint(equalToConstant: 45)
            ])
        mainView.addSubview(Daycollection)
        NSLayoutConstraint.activate([
            Daycollection.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),
            Daycollection.leadingAnchor.constraint(equalTo: dayLabe.trailingAnchor, constant: 0),
            Daycollection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            Daycollection.heightAnchor.constraint(equalToConstant: 60)
            ])
        mainView.addSubview(timeImage)
        NSLayoutConstraint.activate([
            timeImage.topAnchor.constraint(equalTo: dayimage.topAnchor, constant: 30),
            timeImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            timeImage.heightAnchor.constraint(equalToConstant: 15),
            timeImage.widthAnchor.constraint(equalToConstant: 15)
            ])
        mainView.addSubview(timeLabe)
        NSLayoutConstraint.activate([
            timeLabe.topAnchor.constraint(equalTo: timeImage.bottomAnchor, constant: 0),
            timeLabe.leadingAnchor.constraint(equalTo: timeImage.leadingAnchor, constant: 0),
            timeLabe.widthAnchor.constraint(equalToConstant: 40),
            timeLabe.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        mainView.addSubview(startTimeCollection)
        NSLayoutConstraint.activate([
            startTimeCollection.topAnchor.constraint(equalTo: Daycollection.bottomAnchor, constant: 5),
            startTimeCollection.leadingAnchor.constraint(equalTo: timeLabe.trailingAnchor, constant: 0),
            startTimeCollection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            startTimeCollection.heightAnchor.constraint(equalToConstant: 60)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
