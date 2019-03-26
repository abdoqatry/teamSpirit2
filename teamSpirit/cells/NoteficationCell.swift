//
//  NoteficationCell.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class NoteficationCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                view.layer.cornerRadius = 5
                view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.layer.borderColor = UIColor.paleGreyTwo.cgColor
        //        view.layer.borderWidth = 0.5
        //        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var logoImage : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "layer936Copy21")
        imag.contentMode = .scaleToFill
        imag.layer.masksToBounds = true
        imag.clipsToBounds = true
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var teamLable : UILabel = {
       let label = UILabel()
        label.text = "Team Sprit"
        label.font = UIFont.CairoBold(of: 14)
        label.textColor = #colorLiteral(red: 0.9411764706, green: 0.4549019608, blue: 0.1294117647, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var desLable : UILabel = {
        let label = UILabel()
        label.text = "Team Sprit Sprit Sprit Sprit Sprit Sprit"
        label.font = UIFont.CairoRegular(of: 10)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupview()
        
    }
    
    
    func setupview (){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            ])
        tablecell.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 12),
            logoImage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            logoImage.heightAnchor.constraint(equalToConstant: 35),
            logoImage.widthAnchor.constraint(equalToConstant: 35)
            ])
        tablecell.addSubview(teamLable)
        NSLayoutConstraint.activate([
            teamLable.centerYAnchor.constraint(equalTo: logoImage.centerYAnchor, constant: 0),
            teamLable.leadingAnchor.constraint(equalTo: logoImage.trailingAnchor, constant: 5),
            teamLable.heightAnchor.constraint(equalToConstant: 16)
            ])
        tablecell.addSubview(desLable)
        NSLayoutConstraint.activate([
            desLable.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
            desLable.leadingAnchor.constraint(equalTo: teamLable.leadingAnchor, constant: 0),
            desLable.heightAnchor.constraint(equalToConstant: 14)
            ])
        
        
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
