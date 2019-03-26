//
//  FriendsCell.swift
//  teamSpirit
//
//  Created by Moe on 3/20/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FriendsCell: UITableViewCell {

    var tablecell : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.cornerRadius = 14.0
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.layer.borderColor = UIColor.paleGreyTwo.cgColor
        view.layer.borderWidth = 0.5
        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var playerimage : UIImageView = {
       let img = UIImageView()
        img.image = UIImage(named: "layer11")
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var nameLable : UILabel = {
       let lable = UILabel()
        lable.text = "user name"
        lable.textColor = .black
        lable.font = UIFont.CairoBold(of: 13)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var progrssview : UIProgressView = {
        let progrss = UIProgressView()
        progrss.progressTintColor = #colorLiteral(red: 0.9333333333, green: 0.4509803922, blue: 0.1333333333, alpha: 1)
        progrss.layer.cornerRadius = 8
        progrss.progress = 0.5
        progrss.clipsToBounds = true
        //        progrss.backgroundColor = #colorLiteral(red: 0.180194846, green: 0.1096431966, blue: 0.501960814, alpha: 0.3156571062)
        
        progrss.translatesAutoresizingMaskIntoConstraints = false
        return progrss
    }()
    var followview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.4509803922, blue: 0.1333333333, alpha: 1)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var followImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "follower")
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var matchlable : UILabel = {
        let lable = UILabel()
        lable.text = "game number"
        lable.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        lable.font = UIFont.CairoRegular(of: 10)
        lable.sizeToFit()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var numbermatch : UILabel = {
        let lable = UILabel()
        lable.text = "50"
        lable.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        lable.font = UIFont.CairoBold(of: 13)
       lable.sizeToFit()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
contentView.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        setupview()
        
        
    }
    
  
    
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(playerimage)
        NSLayoutConstraint.activate([
            playerimage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: -5),
            playerimage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 0),
            playerimage.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: 0),
            playerimage.widthAnchor.constraint(equalToConstant: 45)
            ])
        tablecell.addSubview(nameLable)
        NSLayoutConstraint.activate([
            nameLable.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            nameLable.leadingAnchor.constraint(equalTo: playerimage.trailingAnchor, constant: 30),
            nameLable.heightAnchor.constraint(equalToConstant: 15),
            
            ])
        tablecell.addSubview(progrssview)
        NSLayoutConstraint.activate([
            progrssview.topAnchor.constraint(equalTo: nameLable.bottomAnchor, constant: 5),
            progrssview.leadingAnchor.constraint(equalTo: nameLable.leadingAnchor, constant: 0),
            progrssview.widthAnchor.constraint(equalToConstant: 125),
            progrssview.heightAnchor.constraint(equalToConstant: 17)
            ])
        tablecell.addSubview(followview)
        NSLayoutConstraint.activate([
            followview.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
            followview.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -25),
            followview.heightAnchor.constraint(equalToConstant: 30),
            followview.widthAnchor.constraint(equalToConstant: 30)
            ])
        followview.addSubview(followImage)
        NSLayoutConstraint.activate([
            followImage.centerYAnchor.constraint(equalTo: followview.centerYAnchor, constant: 0),
            followImage.centerXAnchor.constraint(equalTo: followview.centerXAnchor, constant: 0),
            followImage.heightAnchor.constraint(equalToConstant: 10),
            followImage.widthAnchor.constraint(equalToConstant: 10)
            ])
        tablecell.addSubview(matchlable)
        NSLayoutConstraint.activate([
            matchlable.topAnchor.constraint(equalTo: progrssview.bottomAnchor, constant: 5),
            matchlable.leadingAnchor.constraint(equalTo: progrssview.leadingAnchor, constant: 0),
            matchlable.heightAnchor.constraint(equalToConstant: 13)
            ])
        tablecell.addSubview(numbermatch)
        NSLayoutConstraint.activate([
            numbermatch.topAnchor.constraint(equalTo: matchlable.topAnchor, constant: 0),
            numbermatch.leadingAnchor.constraint(equalTo: matchlable.trailingAnchor, constant: 5),
            numbermatch.heightAnchor.constraint(equalToConstant: 13)
            
            ])
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
