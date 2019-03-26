//
//  FollowedCell.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FollowedCell: UITableViewCell {

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
    var clendeImage : UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.image = UIImage(named: "layer2737")
//        image.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var dateLable : UILabel = {
        let lable = UILabel()
        lable.text = "17 october"
        lable.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        lable.font = UIFont.CairoRegular(of: 11)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var dateLable2 : UILabel = {
        let lable = UILabel()
        lable.text = "3:00 am"
        lable.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        lable.font = UIFont.CairoRegular(of: 11)
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
            nameLable.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            nameLable.leadingAnchor.constraint(equalTo: playerimage.trailingAnchor, constant: 30),
            nameLable.heightAnchor.constraint(equalToConstant: 15),
            
            ])
        tablecell.addSubview(clendeImage)
        NSLayoutConstraint.activate([
            clendeImage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            clendeImage.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -15),
            clendeImage.heightAnchor.constraint(equalToConstant: 10),
            clendeImage.widthAnchor.constraint(equalToConstant: 10)
            ])
        tablecell.addSubview(dateLable)
        NSLayoutConstraint.activate([
            dateLable.topAnchor.constraint(equalTo: clendeImage.topAnchor, constant: 0),
            dateLable.trailingAnchor.constraint(equalTo: clendeImage.leadingAnchor, constant: -5),
            dateLable.heightAnchor.constraint(equalToConstant: 14)
            ])
        tablecell.addSubview(dateLable2)
        NSLayoutConstraint.activate([
            dateLable2.topAnchor.constraint(equalTo: clendeImage.bottomAnchor, constant: 5),
            dateLable2.trailingAnchor.constraint(equalTo: clendeImage.trailingAnchor, constant: 0),
            dateLable2.heightAnchor.constraint(equalToConstant: 14)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


