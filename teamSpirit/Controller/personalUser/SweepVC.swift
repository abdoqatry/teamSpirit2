//
//  SweepVC.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SweepVC: UIViewController {

    var mainview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7829890839)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var sweeplabel : UILabel = {
       let label = UILabel()
        label.text = "Swipe each side for Trending , Friends and Rent "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.numberOfLines = 0
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.CairoBold(of: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var friendLabel : UILabel = {
       let label = UILabel()
        label.text = "friends"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 16)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var frindsimage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "layer1582Copy3")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var trendsLabel : UILabel = {
        let label = UILabel()
        label.text = "trend"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 16)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var trendimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer1582Copy2")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var ratLabel : UILabel = {
        let label = UILabel()
        label.text = "rate"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 16)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ratimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer1584Copy")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var confirmButt : UIButton = {
       let butt = UIButton()
        butt.setTitle("confirm", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
//        butt.layer.cornerRadius = 8
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.isOpaque = false
        setview()
    }
    
    func setview(){
        view.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mainview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
        mainview.addSubview(sweeplabel)
        NSLayoutConstraint.activate([
            sweeplabel.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 60),
            sweeplabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            sweeplabel.heightAnchor.constraint(equalToConstant: 100),
            sweeplabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(friendLabel)
        NSLayoutConstraint.activate([
            friendLabel.topAnchor.constraint(equalTo: sweeplabel.bottomAnchor, constant: 70),
            friendLabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 40),
            friendLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        mainview.addSubview(frindsimage)
        NSLayoutConstraint.activate([
            frindsimage.topAnchor.constraint(equalTo: friendLabel.bottomAnchor, constant: 10),
            frindsimage.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 30),
            frindsimage.heightAnchor.constraint(equalToConstant: 100),
            frindsimage.widthAnchor.constraint(equalToConstant: 100)
            ])
        mainview.addSubview(trendsLabel)
        NSLayoutConstraint.activate([
            trendsLabel.topAnchor.constraint(equalTo: sweeplabel.bottomAnchor, constant: 70),
            trendsLabel.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            trendsLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        mainview.addSubview(trendimage)
        NSLayoutConstraint.activate([
            trendimage.topAnchor.constraint(equalTo: trendsLabel.bottomAnchor, constant: 10),
            trendimage.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            trendimage.heightAnchor.constraint(equalToConstant: 100),
            trendimage.widthAnchor.constraint(equalToConstant: 100)
            ])
        mainview.addSubview(ratLabel)
        NSLayoutConstraint.activate([
            ratLabel.topAnchor.constraint(equalTo: frindsimage.topAnchor, constant: 110),
//            trendsLabel.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            ratLabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            ratLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        mainview.addSubview(ratimage)
        NSLayoutConstraint.activate([
            ratimage.topAnchor.constraint(equalTo: ratLabel.bottomAnchor, constant: 10),
//            trendimage.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            ratimage.heightAnchor.constraint(equalToConstant: 100),
            ratimage.widthAnchor.constraint(equalToConstant: 100),
            ratimage.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0)
            ])
        mainview.addSubview(confirmButt)
        NSLayoutConstraint.activate([
            confirmButt.topAnchor.constraint(equalTo: ratimage.bottomAnchor, constant: 5),
            confirmButt.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20),
            confirmButt.heightAnchor.constraint(equalToConstant: 45),
            confirmButt.widthAnchor.constraint(equalToConstant: 80)
            ])
        
    }
 

}
