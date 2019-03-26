//
//  MyMatchesCell.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class MyMatchesCell: UITableViewCell {

    var backimage : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "layer17")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var groundname : UILabel = {
      let label = UILabel()
        label.text = "amir abdula statduim"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var VSLabel : UILabel = {
        let label = UILabel()
        label.text = "VS"
        label.textColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.font = UIFont.CairoBold(of: 30)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var datelabel : UILabel = {
       let label = UILabel()
        label.text = "28 feb"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 10)
        label.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        label.layer.applySketchShadow()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var team1image : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer1")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var teamimage2 : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer11")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var resultLabel : UILabel = {
        let label = UILabel()
        label.text = "0 : 0"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 19)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var codeLabel : UILabel = {
        let label = UILabel()
        label.text = "match code"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
//        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var code : UILabel = {
        let label = UILabel()
        label.text = "1234"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        //        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var placeLable : UILabel = {
        let lable = UILabel()
        lable.text = "el Ryad"
        lable.textColor = #colorLiteral(red: 0.6862745098, green: 0.6941176471, blue: 0.1137254902, alpha: 1)
        lable.font = UIFont.CairoBold(of: 10)
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
    var startTime : UILabel = {
       let label = UILabel()
        label.text = "4 am -"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var endTime : UILabel = {
        let label = UILabel()
        label.text = "7 am "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupview()
        
    }
    func setupview(){
        contentView.addSubview(backimage)
        NSLayoutConstraint.activate([
            backimage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            backimage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            backimage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            backimage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        contentView.addSubview(groundname)
        NSLayoutConstraint.activate([
            groundname.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            groundname.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            groundname.heightAnchor.constraint(equalToConstant: 14)
            ])
        contentView.addSubview(VSLabel)
        NSLayoutConstraint.activate([
            VSLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            VSLabel.topAnchor.constraint(equalTo: groundname.bottomAnchor, constant: 20),
            VSLabel.heightAnchor.constraint(equalToConstant: 30)
            ])
        contentView.addSubview(datelabel)
        NSLayoutConstraint.activate([
            datelabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            datelabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            datelabel.heightAnchor.constraint(equalToConstant: 18),
            datelabel.widthAnchor.constraint(equalToConstant: 70)
            
            ])
        contentView.addSubview(team1image)
        NSLayoutConstraint.activate([
            team1image.topAnchor.constraint(equalTo: groundname.bottomAnchor, constant: 17),
            team1image.trailingAnchor.constraint(equalTo: VSLabel.leadingAnchor, constant: -30),
            team1image.heightAnchor.constraint(equalToConstant: 60),
            team1image.widthAnchor.constraint(equalToConstant: 60)
            ])
        contentView.addSubview(teamimage2)
        NSLayoutConstraint.activate([
            teamimage2.topAnchor.constraint(equalTo: groundname.bottomAnchor, constant: 17),
            teamimage2.leadingAnchor.constraint(equalTo: VSLabel.trailingAnchor, constant: 30),
            teamimage2.heightAnchor.constraint(equalToConstant: 60),
            teamimage2.widthAnchor.constraint(equalToConstant: 60)
            ])
        contentView.addSubview(resultLabel)
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: VSLabel.bottomAnchor, constant: 10),
            resultLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            resultLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        contentView.addSubview(codeLabel)
        NSLayoutConstraint.activate([
            codeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            codeLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 5),
            codeLabel.heightAnchor.constraint(equalToConstant: 14),
            ])
        contentView.addSubview(code)
        NSLayoutConstraint.activate([
            code.topAnchor.constraint(equalTo: codeLabel.topAnchor, constant: 0),
            code.leadingAnchor.constraint(equalTo: codeLabel.trailingAnchor, constant: 5),
            code.heightAnchor.constraint(equalToConstant: 14)
            ])
        contentView.addSubview(locationImage)
        NSLayoutConstraint.activate([
            locationImage.topAnchor.constraint(equalTo: code.bottomAnchor, constant: 5),
            locationImage.leadingAnchor.constraint(equalTo: groundname.leadingAnchor, constant: 0),
            locationImage.heightAnchor.constraint(equalToConstant: 20),
            locationImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        contentView.addSubview(placeLable)
        NSLayoutConstraint.activate([
            placeLable.heightAnchor.constraint(equalToConstant: 14),
            placeLable.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 5),
            placeLable.topAnchor.constraint(equalTo: locationImage.topAnchor, constant: 0)
            ])
        contentView.addSubview(startTime)
        NSLayoutConstraint.activate([
            startTime.topAnchor.constraint(equalTo: locationImage.topAnchor, constant: 0),
            startTime.leadingAnchor.constraint(equalTo: placeLable.trailingAnchor, constant: 5),
            startTime.heightAnchor.constraint(equalToConstant: 14)
            ])
        contentView.addSubview(endTime)
        NSLayoutConstraint.activate([
            endTime.topAnchor.constraint(equalTo: locationImage.topAnchor, constant: 0),
            endTime.leadingAnchor.constraint(equalTo: startTime.trailingAnchor, constant: 5),
            endTime.heightAnchor.constraint(equalToConstant: 14)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
