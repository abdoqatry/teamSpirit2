//
//  StartTimeCell.swift
//  teamSpirit
//
//  Created by Moe on 3/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class StartTimeCell: UICollectionViewCell {
    
    var mainview : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var daylabel : UIImageView = {
        let label = UIImageView()
        label.image = UIImage(named: "soccerCopy-1")
//        label.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
//        label.font = UIFont.CairoRegular(of: 13)
        label.contentMode = .scaleAspectFill
        label.clipsToBounds = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var day : UILabel = {
        let label = UILabel()
        label.text = "13"
        label.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    func setUpView(){
        contentView.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            mainview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            mainview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            mainview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        mainview.addSubview(daylabel)
        NSLayoutConstraint.activate([
            daylabel.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 5),
            daylabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            daylabel.heightAnchor.constraint(equalToConstant: 20),
            daylabel.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainview.addSubview(day)
        NSLayoutConstraint.activate([
            day.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            day.topAnchor.constraint(equalTo: daylabel.bottomAnchor, constant: 7),
            day.heightAnchor.constraint(equalToConstant: 13)
            ])
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
