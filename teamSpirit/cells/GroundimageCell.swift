//
//  GroundimageCell.swift
//  teamSpirit
//
//  Created by Moe on 3/22/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class GroundimageCell: UICollectionViewCell {
    
  
    var playimage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "layer16")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var namelabel : UILabel = {
       let label = UILabel()
        label.text = "studium of shehk gzaa"
        label.font = UIFont.CairoBold(of: 16)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        contentView.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        setUpView()
    }
    
    func setUpView(){

        contentView.addSubview(playimage)
        NSLayoutConstraint.activate([
            playimage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            playimage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            playimage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            playimage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
//            playimage.heightAnchor.constraint(equalToConstant: 300)
            ])
        playimage.addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            namelabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0)
            ])
        playimage.addSubview(placeLable)
        NSLayoutConstraint.activate([
            placeLable.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 15),
            placeLable.heightAnchor.constraint(equalToConstant: 13),
            placeLable.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0)
            ])
        playimage.addSubview(locationImage)
        NSLayoutConstraint.activate([
            locationImage.topAnchor.constraint(equalTo: placeLable.topAnchor, constant: 0),
            locationImage.leadingAnchor.constraint(equalTo: placeLable.trailingAnchor, constant: 5),
            locationImage.heightAnchor.constraint(equalToConstant: 20),
            locationImage.widthAnchor.constraint(equalToConstant: 20)            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
