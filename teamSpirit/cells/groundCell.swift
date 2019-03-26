//
//  groundCell.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class groundCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.01568627451, green: 0.003921568627, blue: 0.003921568627, alpha: 0.8605789812)
//        view.layer.cornerRadius = 14.0
//        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.layer.borderColor = UIColor.paleGreyTwo.cgColor
//        view.layer.borderWidth = 0.5
//        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var groundImage : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "layer16")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        imag.layer.masksToBounds = true
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var groundview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 1)
        view.layer.applySketchShadow(color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), alpha: 0, x: 0, y: 6, blur: 7, spread: 0)
        view.layer.borderWidth = 0.5
                view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var statduimLable : UILabel = {
       let lable = UILabel()
        lable.text = "fahd staduim"
        lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lable.font = UIFont.CairoBold(of: 12)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var desLable : UILabel = {
        let lable = UILabel()
        lable.text = "هذا النص تجريبى يمكن ان يستبدل بنفس هذا النص تجريبى يمكن"
        lable.textColor = #colorLiteral(red: 0.6666666667, green: 0.662745098, blue: 0.662745098, alpha: 1)
        lable.font = UIFont.CairoRegular(of: 10)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var placeLable : UILabel = {
        let lable = UILabel()
        lable.text = "el Ryad"
        lable.textColor = #colorLiteral(red: 0.6862745098, green: 0.6941176471, blue: 0.1137254902, alpha: 1)
        lable.font = UIFont.CairoRegular(of: 10)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var locationImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "placeholder1Copy4")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
//        imag.layer.masksToBounds = true
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.01568627451, green: 0.003921568627, blue: 0.003921568627, alpha: 0.8605789812)
        setupview()
        
    }
    
    func setupview(){
        
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(groundImage)
        NSLayoutConstraint.activate([
            groundImage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 0),
            groundImage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 0),
            groundImage.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: 0),
            groundImage.heightAnchor.constraint(equalToConstant: 130)
            ])
        tablecell.addSubview(groundview)
        NSLayoutConstraint.activate([
            groundview.topAnchor.constraint(equalTo: groundImage.bottomAnchor, constant: 0),
            groundview.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 0),
            groundview.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: 0),
            groundview.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: 0)
            ])
        groundview.addSubview(statduimLable)
        NSLayoutConstraint.activate([
            statduimLable.topAnchor.constraint(equalTo: groundview.topAnchor, constant: 10),
            statduimLable.leadingAnchor.constraint(equalTo: groundview.leadingAnchor, constant: 22),
            statduimLable.heightAnchor.constraint(equalToConstant: 14)
            ])
        groundview.addSubview(desLable)
        NSLayoutConstraint.activate([
            desLable.topAnchor.constraint(equalTo: statduimLable.bottomAnchor, constant: 5),
            desLable.leadingAnchor.constraint(equalTo: statduimLable.leadingAnchor, constant: 0),
            desLable.heightAnchor.constraint(equalToConstant: 13)
            ])
        groundview.addSubview(placeLable)
        NSLayoutConstraint.activate([
            placeLable.topAnchor.constraint(equalTo: statduimLable.topAnchor, constant: 0),
            placeLable.trailingAnchor.constraint(equalTo: groundview.trailingAnchor, constant: -30),
            placeLable.heightAnchor.constraint(equalToConstant: 13)
            ])
        groundview.addSubview(locationImage)
        NSLayoutConstraint.activate([
            locationImage.centerYAnchor.constraint(equalTo: groundview.centerYAnchor, constant: 0),
            locationImage.trailingAnchor.constraint(equalTo: placeLable.leadingAnchor, constant: -3),
            locationImage.heightAnchor.constraint(equalToConstant: 20),
            locationImage.widthAnchor.constraint(equalToConstant: 20)
            ])

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
