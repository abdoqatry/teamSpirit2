//
//  PlayerPageView.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PlayerPageView: UIView {

 
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var navigation : UIView = {
        let view = UIView()
        view .backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titleLable : UILabel = {
        let lable = UILabel()
        lable.text = "Main page"
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var singImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "سجل المتابعة")
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var follwerimage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "follower")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var menubutton : UIButton = {
        let but = UIButton()
        but.setImage(UIImage(named: "follower"), for: .normal)
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()
    
    var searchBar : UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = NSLocalizedString("Search for game", comment: "")
        bar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        bar.layer.cornerRadius = 5
        bar.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    var imgCard : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "vectorSmartObject")
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var titleCard : UILabel = {
        let label = UILabel()
        label.text = "player card"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 0.9176470588, green: 0.4352941176, blue: 0.1137254902, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var playerImag : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer1")
        imag.layer.masksToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var playername : UILabel = {
        let label = UILabel()
        label.text = "edein hazerd"
        label.font = UIFont.CairoBold(of: 13)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var playerage : UILabel = {
        let label = UILabel()
        label.text = "age :"
        label.font = UIFont.systemFont(ofSize: 12)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var age : UILabel = {
        let label = UILabel()
        label.text = "28"
        label.font = UIFont.CairoBold(of: 13)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var playerPose : UILabel = {
        let label = UILabel()
        label.text = "defence"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 0.9176470588, green: 0.4352941176, blue: 0.1137254902, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Pose : UILabel = {
        let label = UILabel()
        label.text = "20"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 0.9176470588, green: 0.4352941176, blue: 0.1137254902, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var logoImag : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer3")
        imag.layer.masksToBounds = true
        imag.contentMode = .scaleAspectFill
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    
    var tqiamlable : UILabel = {
        let label = UILabel()
        label.text = "90%"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var tqiam : UILabel = {
        let label = UILabel()
        label.text = "evaluated"
        label.font = UIFont.CairoRegular(of: 14)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line1 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var cleanshetLa : UILabel = {
        let label = UILabel()
        label.text = "90%"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cleansesht : UILabel = {
        let label = UILabel()
        label.text = "clean sheet"
        label.font = UIFont.CairoRegular(of: 14)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var horizanteLine : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    var tiomplayed : UILabel = {
        let label = UILabel()
        label.text = "12"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timedplay : UILabel = {
        let label = UILabel()
        label.text = "time of play"
        label.font = UIFont.CairoRegular(of: 12)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line2 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var goalsLable : UILabel = {
        let label = UILabel()
        label.text = "90%"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var goals : UILabel = {
        let label = UILabel()
        label.text = "Goals"
        label.font = UIFont.CairoRegular(of: 14)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var horizanteLine2 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var assestLable : UILabel = {
        let label = UILabel()
        label.text = "12%"
        label.font = UIFont.CairoBold(of: 16)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var assest : UILabel = {
        let label = UILabel()
        label.text = "assest"
        label.font = UIFont.CairoRegular(of: 12)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var statusLable : UILabel = {
        let label = UILabel()
        label.text = "availabe"
        label.font = UIFont.CairoBold(of: 14)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var status : UILabel = {
        let label = UILabel()
        label.text = "player status"
        label.font = UIFont.CairoRegular(of: 12)
        label.sizeToFit()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var groundimage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "ground")
        img.contentMode = .scaleAspectFill
        img.layer.masksToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var followButton : UIButton = {
       let butt = UIButton()
        butt.layer.cornerRadius = 14
        butt.setTitle("follow", for: .normal)
        butt.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        butt.setTitleColor(#colorLiteral(red: 0.9176470588, green: 0.4352941176, blue: 0.1137254902, alpha: 1), for: .normal)
        butt.layer.applySketchShadow()
        butt.layer.borderWidth = 0.5
        butt.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpview()
        
    }
    
    
    
    func setUpview (){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
//        mainView.addSubview(navigation)
//        NSLayoutConstraint.activate([
//            navigation.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
//            navigation.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
//            navigation.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
//            navigation.heightAnchor.constraint(equalToConstant: 100)
//            ])
//        navigation.addSubview(titleLable)
//        NSLayoutConstraint.activate([
//            titleLable.centerXAnchor.constraint(equalTo: navigation.centerXAnchor, constant: 0),
//            titleLable.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
//            titleLable.heightAnchor.constraint(equalToConstant: 17)
//            ])
//        navigation.addSubview(singImage)
//        NSLayoutConstraint.activate([
//            singImage.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
//            singImage.leadingAnchor.constraint(equalTo: navigation.leadingAnchor, constant: 20),
//            singImage.heightAnchor.constraint(equalToConstant: 20),
//            singImage.widthAnchor.constraint(equalToConstant: 45)
//            ])
//        navigation.addSubview(follwerimage)
//        NSLayoutConstraint.activate([
//            follwerimage.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
//            follwerimage.leadingAnchor.constraint(equalTo: singImage.trailingAnchor, constant: 5),
//            follwerimage.heightAnchor.constraint(equalToConstant: 22),
//            follwerimage.widthAnchor.constraint(equalToConstant: 10)
//            ])
//        navigation.addSubview(menubutton)
//        NSLayoutConstraint.activate([
//            menubutton.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
//            menubutton.trailingAnchor.constraint(equalTo: navigation.trailingAnchor, constant: -20),
//            menubutton.heightAnchor.constraint(equalToConstant: 40),
//            menubutton.widthAnchor.constraint(equalToConstant: 40)
//            ])
//
//        mainView.addSubview(searchBar)
//        NSLayoutConstraint.activate([
//            searchBar.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
//            searchBar.topAnchor.constraint(equalTo: navigation.bottomAnchor, constant: 10),
//            searchBar.heightAnchor.constraint(equalToConstant: 40),
//            searchBar.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20)
//            ])
        mainView.addSubview(imgCard)
        NSLayoutConstraint.activate([
            imgCard.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 100),
            imgCard.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            imgCard.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            imgCard.heightAnchor.constraint(equalToConstant: 370)
            ])
        
        imgCard.addSubview(titleCard)
        NSLayoutConstraint.activate([
            titleCard.topAnchor.constraint(equalTo: imgCard.topAnchor, constant: 25),
            titleCard.centerXAnchor.constraint(equalTo: imgCard.centerXAnchor, constant: 0),
            titleCard.heightAnchor.constraint(equalToConstant: 18),
            
            ])
        imgCard.addSubview(playerImag)
        NSLayoutConstraint.activate([
            playerImag.topAnchor.constraint(equalTo: imgCard.topAnchor, constant: 42),
            playerImag.leadingAnchor.constraint(equalTo: imgCard.leadingAnchor, constant: 32),
            playerImag.heightAnchor.constraint(equalToConstant: 60),
            playerImag.widthAnchor.constraint(equalToConstant: 55)
            ])
        imgCard.addSubview(playername)
        NSLayoutConstraint.activate([
            playername.topAnchor.constraint(equalTo: titleCard.topAnchor, constant: 30),
            playername.leadingAnchor.constraint(equalTo: playerImag.trailingAnchor, constant: 20),
            playername.heightAnchor.constraint(equalToConstant: 15),
            ])
        imgCard.addSubview(playerage)
        NSLayoutConstraint.activate([
            playerage.topAnchor.constraint(equalTo: playername.bottomAnchor, constant: 8),
            playerage.leadingAnchor.constraint(equalTo: playerImag.trailingAnchor, constant: 10),
            playerage.heightAnchor.constraint(equalToConstant: 13)
            ])
        imgCard.addSubview(age)
        NSLayoutConstraint.activate([
            age.topAnchor.constraint(equalTo: playerage.topAnchor, constant: 0),
            age.leadingAnchor.constraint(equalTo: playerage.trailingAnchor, constant: 5),
            age.heightAnchor.constraint(equalToConstant: 13)
            ])
        imgCard.addSubview(playerPose)
        NSLayoutConstraint.activate([
            playerPose.topAnchor.constraint(equalTo: imgCard.topAnchor, constant: 80),
            playerPose.trailingAnchor.constraint(equalTo: imgCard.trailingAnchor, constant: -40),
            playerPose.heightAnchor.constraint(equalToConstant: 16)
            ])
        imgCard.addSubview(Pose)
        NSLayoutConstraint.activate([
            Pose.bottomAnchor.constraint(equalTo: playerPose.topAnchor, constant: 5),
            Pose.centerXAnchor.constraint(equalTo: playerPose.centerXAnchor, constant: 0),
            Pose.heightAnchor.constraint(equalToConstant: 16)
            ])
        imgCard.addSubview(logoImag)
        NSLayoutConstraint.activate([
            logoImag.topAnchor.constraint(equalTo: Pose.topAnchor, constant:-10),
            logoImag.trailingAnchor.constraint(equalTo: playerPose.leadingAnchor, constant: 5),
            logoImag.heightAnchor.constraint(equalToConstant: 80),
            logoImag.widthAnchor.constraint(equalToConstant: 60)
            ])
        imgCard.addSubview(tqiamlable)
        NSLayoutConstraint.activate([
            tqiamlable.topAnchor.constraint(equalTo: playerImag.bottomAnchor, constant: 30),
            tqiamlable.leadingAnchor.constraint(equalTo: imgCard.leadingAnchor, constant: 55),
            tqiamlable.heightAnchor.constraint(equalToConstant: 14),
            tqiamlable.widthAnchor.constraint(equalToConstant: 50)
            ])
        imgCard.addSubview(tqiam)
        NSLayoutConstraint.activate([
            tqiam.topAnchor.constraint(equalTo: tqiamlable.bottomAnchor, constant: 5),
            tqiam.leadingAnchor.constraint(equalTo: imgCard.leadingAnchor, constant: 55),
            tqiam.heightAnchor.constraint(equalToConstant: 13),
            //            tqiam.widthAnchor.constraint(equalToConstant: 30)
            ])
        imgCard.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: tqiam.bottomAnchor, constant: 5),
            line1.leadingAnchor.constraint(equalTo: tqiam.leadingAnchor, constant: 0),
            //            line1.trailingAnchor.constraint(equalTo: tqiam.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 3),
            line1.widthAnchor.constraint(equalToConstant: 60)
            ])
        imgCard.addSubview(cleanshetLa)
        NSLayoutConstraint.activate([
            cleanshetLa.topAnchor.constraint(equalTo: line1.bottomAnchor, constant: 10),
            cleanshetLa.leadingAnchor.constraint(equalTo: tqiamlable.leadingAnchor, constant: 0),
            cleanshetLa.heightAnchor.constraint(equalToConstant: 14),
            cleanshetLa.widthAnchor.constraint(equalToConstant: 50)
            ])
        imgCard.addSubview(cleansesht)
        NSLayoutConstraint.activate([
            cleansesht.topAnchor.constraint(equalTo: cleanshetLa.bottomAnchor, constant: 5),
            cleansesht.leadingAnchor.constraint(equalTo: tqiam.leadingAnchor, constant: 0),
            cleansesht.heightAnchor.constraint(equalToConstant: 13)
            ])
        imgCard.addSubview(horizanteLine)
        NSLayoutConstraint.activate([
            horizanteLine.topAnchor.constraint(equalTo: tqiam.topAnchor, constant: -3),
            horizanteLine.leadingAnchor.constraint(equalTo: line1.trailingAnchor, constant: 10),
            horizanteLine.heightAnchor.constraint(equalToConstant: 52),
            horizanteLine.widthAnchor.constraint(equalToConstant: 3)
            ])
        
        imgCard.addSubview(tiomplayed)
        NSLayoutConstraint.activate([
            tiomplayed.topAnchor.constraint(equalTo: tqiamlable.topAnchor, constant: 0),
            tiomplayed.centerXAnchor.constraint(equalTo: imgCard.centerXAnchor, constant: 0),
            tiomplayed.heightAnchor.constraint(equalToConstant: 14),
            tiomplayed.widthAnchor.constraint(equalToConstant: 50)
            ])
        imgCard.addSubview(timedplay)
        NSLayoutConstraint.activate([
            timedplay.topAnchor.constraint(equalTo: tiomplayed.bottomAnchor, constant: 5),
            timedplay.centerXAnchor.constraint(equalTo: imgCard.centerXAnchor, constant: 0),
            timedplay.heightAnchor.constraint(equalToConstant: 13),
            //            tqiam.widthAnchor.constraint(equalToConstant: 30)
            ])
        imgCard.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: timedplay.bottomAnchor, constant: 5),
            line2.leadingAnchor.constraint(equalTo: timedplay.leadingAnchor, constant: 0),
            //            line2.trailingAnchor.constraint(equalTo: timedplay.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 3),
            line2.widthAnchor.constraint(equalToConstant: 60)
            ])
        
        imgCard.addSubview(goalsLable)
        NSLayoutConstraint.activate([
            goalsLable.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 10),
            goalsLable.centerXAnchor.constraint(equalTo: imgCard.centerXAnchor, constant: 0),
            goalsLable.heightAnchor.constraint(equalToConstant: 14),
            goalsLable.widthAnchor.constraint(equalToConstant: 50)
            ])
        imgCard.addSubview(goals)
        NSLayoutConstraint.activate([
            goals.topAnchor.constraint(equalTo: goalsLable.bottomAnchor, constant: 5),
            goals.centerXAnchor.constraint(equalTo: imgCard.centerXAnchor, constant: 0),
            goals.heightAnchor.constraint(equalToConstant: 13)
            ])
        imgCard.addSubview(horizanteLine2)
        NSLayoutConstraint.activate([
            horizanteLine2.topAnchor.constraint(equalTo: tqiam.topAnchor, constant: -3),
            horizanteLine2.leadingAnchor.constraint(equalTo: line2.trailingAnchor, constant: 13),
            horizanteLine2.heightAnchor.constraint(equalToConstant: 52),
            horizanteLine2.widthAnchor.constraint(equalToConstant: 3)
            ])
        
        imgCard.addSubview(assestLable)
        NSLayoutConstraint.activate([
            assestLable.topAnchor.constraint(equalTo: tqiamlable.topAnchor, constant: 0),
            assestLable.trailingAnchor.constraint(equalTo: imgCard.trailingAnchor, constant: -50),
            assestLable.heightAnchor.constraint(equalToConstant: 14),
            assestLable.widthAnchor.constraint(equalToConstant: 50)
            ])
        imgCard.addSubview(assest)
        NSLayoutConstraint.activate([
            assest.topAnchor.constraint(equalTo: assestLable.bottomAnchor, constant: 5),
            assest.trailingAnchor.constraint(equalTo: imgCard.trailingAnchor, constant: -50),
            assest.heightAnchor.constraint(equalToConstant: 13),
            //            tqiam.widthAnchor.constraint(equalToConstant: 30)
            ])
        imgCard.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: assest.bottomAnchor, constant: 5),
            //            line3.leadingAnchor.constraint(equalTo: assest.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: assest.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 3),
            line3.widthAnchor.constraint(equalToConstant: 60)
            ])
        imgCard.addSubview(statusLable)
        NSLayoutConstraint.activate([
            statusLable.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 10),
            statusLable.trailingAnchor.constraint(equalTo: assestLable.trailingAnchor, constant: 0),
            statusLable.heightAnchor.constraint(equalToConstant: 14),
            statusLable.widthAnchor.constraint(equalToConstant: 50)
            ])
        imgCard.addSubview(status)
        NSLayoutConstraint.activate([
            status.topAnchor.constraint(equalTo: statusLable.bottomAnchor, constant: 5),
            status.trailingAnchor.constraint(equalTo: statusLable.trailingAnchor, constant: 0),
            status.heightAnchor.constraint(equalToConstant: 13)
            ])
        imgCard.addSubview(groundimage)
        NSLayoutConstraint.activate([
            groundimage.topAnchor.constraint(equalTo: status.bottomAnchor, constant: 30),
            groundimage.centerXAnchor.constraint(equalTo: imgCard.centerXAnchor, constant: 0),
            groundimage.widthAnchor.constraint(equalToConstant: 80),
            groundimage.heightAnchor.constraint(equalToConstant: 80)
            
            ])
        mainView.addSubview(followButton)
        NSLayoutConstraint.activate([
            followButton.topAnchor.constraint(equalTo: imgCard.bottomAnchor, constant: 30),
            followButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            followButton.heightAnchor.constraint(equalToConstant: 25),
            followButton.widthAnchor.constraint(equalToConstant: 130)
            
            ])
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



