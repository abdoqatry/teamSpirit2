//
//  personaluserView.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class personaluserView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var navigatioView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3294117647, green: 0.3882352941, blue: 0.5568627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var menuButton : UIButton = {
        let Button = UIButton()
        Button.setImage(UIImage(named: "icMenu"), for: .normal)
        Button.backgroundColor = .clear
        
        Button.translatesAutoresizingMaskIntoConstraints = false
        return Button
    }()
    var bottonView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9176470588, green: 0.4352941176, blue: 0.1137254902, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var centerView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.applySketchShadow()
        view.layer.cornerRadius = 8
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var personalImage : UIImageView = {
       let img = UIImageView()
        img.layer.cornerRadius = 36
        img.clipsToBounds = true
        img.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        img.layer.borderWidth = 0.5
        img.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        img.image = UIImage(named: "layer1")
        img.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        img.layer.masksToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    // name View
    var nameView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var namelable : UILabel = {
       let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var name : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.sizeToFit()
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line1 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // age View
    var ageView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage2 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var agelable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "age"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var age : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line2 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // status View
    var statusView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage3 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var statuslable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "status"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var status : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // status View
    var positionView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var positionlable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "position"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var position : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line4 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // mail
    var mailView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var maillable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "mail"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mail : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line5 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // phone
    var phoneView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage6: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var phonelable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "phone"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phone : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line6 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // city
    var cityView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage7: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var citylable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 13)
        label.sizeToFit()
        label.text = "city"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var city : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()
        //        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line7 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // number
    var numberView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pollimage8: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer936Copy21")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var numberlable : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoRegular(of: 12)
        label.sizeToFit()
        label.text = "number of matches"
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var number : UITextField = {
        let label = UITextField()
        label.font = UIFont.CairoBold(of: 13)
        label.text = ""
        label.layer.cornerRadius = 5
        
        label.borderStyle = .roundedRect
        label.layer.applySketchShadow()
        //        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var editButton : UIButton = {
       let butt = UIButton()
        butt.setTitle("edit", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.9176470588, green: 0.4352941176, blue: 0.1137254902, alpha: 1), for: .normal)
        butt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        butt.layer.cornerRadius = 14
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
  
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
        
    }
    
  
    
    func setView(){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(navigatioView)
        NSLayoutConstraint.activate([
            navigatioView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            navigatioView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            navigatioView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            navigatioView.heightAnchor.constraint(equalToConstant: 83)
            ])
        navigatioView.addSubview(menuButton)
        NSLayoutConstraint.activate([
            menuButton.topAnchor.constraint(equalTo: navigatioView.topAnchor, constant: 41.0),
            menuButton.leadingAnchor.constraint(equalTo: navigatioView.leadingAnchor, constant: 16.0),
            menuButton.heightAnchor.constraint(equalToConstant: 25),
            menuButton.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainView.addSubview(bottonView)
        NSLayoutConstraint.activate([
            bottonView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0),
            bottonView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            bottonView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            bottonView.heightAnchor.constraint(equalToConstant: 320)
            ])
        mainView.addSubview(centerView)
        NSLayoutConstraint.activate([
            centerView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor, constant: 0),
            centerView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            centerView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            centerView.heightAnchor.constraint(equalToConstant: 420)
            ])
        centerView.addSubview(personalImage)
        NSLayoutConstraint.activate([
            personalImage.topAnchor.constraint(equalTo: centerView.topAnchor, constant: -30),
            personalImage.centerXAnchor.constraint(equalTo: centerView.centerXAnchor, constant: 0),
            personalImage.heightAnchor.constraint(equalToConstant: 72),
            personalImage.widthAnchor.constraint(equalToConstant: 72)
            ])
        centerView.addSubview(nameView)
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: personalImage.bottomAnchor, constant: 5),
            nameView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            nameView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            nameView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        nameView.addSubview(pollimage)
//        NSLayoutConstraint.activate([
//            pollimage.centerYAnchor.constraint(equalTo: nameView.centerYAnchor, constant: 0),
//            pollimage.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 30),
//            pollimage.heightAnchor.constraint(equalToConstant: 15),
//            pollimage.widthAnchor.constraint(equalToConstant: 15)
//            ])
        nameView.addSubview(namelable)
        NSLayoutConstraint.activate([
            namelable.centerYAnchor.constraint(equalTo: nameView.centerYAnchor, constant: 0),
            namelable.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 30),
            namelable.heightAnchor.constraint(equalToConstant: 13),
            namelable.widthAnchor.constraint(equalToConstant: 50)
            ])
        nameView.addSubview(name)
        NSLayoutConstraint.activate([
            name.centerYAnchor.constraint(equalTo: nameView.centerYAnchor, constant: 0),
            name.leadingAnchor.constraint(equalTo: namelable.trailingAnchor, constant: 10),
            name.heightAnchor.constraint(equalToConstant: 25),
            name.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -30)
            ])
//        centerView.addSubview(line1)
//        NSLayoutConstraint.activate([
//            line1.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 1),
//            line1.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
//            line1.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
//            line1.heightAnchor.constraint(equalToConstant: 1)
//            ])
        // age
        centerView.addSubview(ageView)
        NSLayoutConstraint.activate([
            ageView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 1),
            ageView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            ageView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            ageView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        ageView.addSubview(pollimage2)
//        NSLayoutConstraint.activate([
//            pollimage2.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0),
//            pollimage2.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: 30),
//            pollimage2.heightAnchor.constraint(equalToConstant: 15),
//            pollimage2.widthAnchor.constraint(equalToConstant: 15)
//            ])
        ageView.addSubview(agelable)
        NSLayoutConstraint.activate([
            agelable.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0),
            agelable.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: 30),
            agelable.heightAnchor.constraint(equalToConstant: 13),
            agelable.widthAnchor.constraint(equalToConstant: 50)
            ])
        ageView.addSubview(age)
        NSLayoutConstraint.activate([
            age.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0),
            age.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            age.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            age.heightAnchor.constraint(equalToConstant: 25)
            ])
//        centerView.addSubview(line2)
//        NSLayoutConstraint.activate([
//            line2.topAnchor.constraint(equalTo: ageView.bottomAnchor, constant: 1),
//            line2.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
//            line2.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
//            line2.heightAnchor.constraint(equalToConstant: 1)
//            ])
        // status
        centerView.addSubview(statusView)
        NSLayoutConstraint.activate([
            statusView.topAnchor.constraint(equalTo: ageView.bottomAnchor, constant: 1),
            statusView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            statusView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            statusView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        statusView.addSubview(pollimage3)
//        NSLayoutConstraint.activate([
//            pollimage3.centerYAnchor.constraint(equalTo: statusView.centerYAnchor, constant: 0),
//            pollimage3.leadingAnchor.constraint(equalTo: statusView.leadingAnchor, constant: 30),
//            pollimage3.heightAnchor.constraint(equalToConstant: 15),
//            pollimage3.widthAnchor.constraint(equalToConstant: 15)
//            ])
        statusView.addSubview(statuslable)
        NSLayoutConstraint.activate([
            statuslable.centerYAnchor.constraint(equalTo: statusView.centerYAnchor, constant: 0),
            statuslable.leadingAnchor.constraint(equalTo: statusView.leadingAnchor, constant: 30),
            statuslable.heightAnchor.constraint(equalToConstant: 13),
            statuslable.widthAnchor.constraint(equalToConstant: 50)
            ])
        statusView.addSubview(status)
        NSLayoutConstraint.activate([
            status.centerYAnchor.constraint(equalTo: statusView.centerYAnchor, constant: 0),
            status.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            status.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            status.heightAnchor.constraint(equalToConstant: 25)
            ])
//        centerView.addSubview(line3)
//        NSLayoutConstraint.activate([
//            line3.topAnchor.constraint(equalTo: statusView.bottomAnchor, constant: 1),
//            line3.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
//            line3.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
//            line3.heightAnchor.constraint(equalToConstant: 1)
//            ])
        // position
        centerView.addSubview(positionView)
        NSLayoutConstraint.activate([
            positionView.topAnchor.constraint(equalTo: statusView.bottomAnchor, constant: 1),
            positionView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            positionView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            positionView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        positionView.addSubview(pollimage4)
//        NSLayoutConstraint.activate([
//            pollimage4.centerYAnchor.constraint(equalTo: positionView.centerYAnchor, constant: 0),
//            pollimage4.leadingAnchor.constraint(equalTo: positionView.leadingAnchor, constant: 30),
//            pollimage4.heightAnchor.constraint(equalToConstant: 15),
//            pollimage4.widthAnchor.constraint(equalToConstant: 15)
//            ])
        positionView.addSubview(positionlable)
        NSLayoutConstraint.activate([
            positionlable.centerYAnchor.constraint(equalTo: positionView.centerYAnchor, constant: 0),
            positionlable.leadingAnchor.constraint(equalTo: positionView.leadingAnchor, constant: 30),
            positionlable.heightAnchor.constraint(equalToConstant: 13),
            positionlable.widthAnchor.constraint(equalToConstant: 50)
            ])
        positionView.addSubview(position)
        NSLayoutConstraint.activate([
            position.centerYAnchor.constraint(equalTo: positionView.centerYAnchor, constant: 0),
            position.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            position.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            position.heightAnchor.constraint(equalToConstant: 25)
            ])
//        centerView.addSubview(line4)
//        NSLayoutConstraint.activate([
//            line4.topAnchor.constraint(equalTo: positionView.bottomAnchor, constant: 1),
//            line4.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
//            line4.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
//            line4.heightAnchor.constraint(equalToConstant: 1)
//            ])
        // mail
        centerView.addSubview(mailView)
        NSLayoutConstraint.activate([
            mailView.topAnchor.constraint(equalTo: positionView.bottomAnchor, constant: 1),
            mailView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            mailView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            mailView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        mailView.addSubview(pollimage5)
//        NSLayoutConstraint.activate([
//            pollimage5.centerYAnchor.constraint(equalTo: mailView.centerYAnchor, constant: 0),
//            pollimage5.leadingAnchor.constraint(equalTo: mailView.leadingAnchor, constant: 30),
//            pollimage5.heightAnchor.constraint(equalToConstant: 15),
//            pollimage5.widthAnchor.constraint(equalToConstant: 15)
//            ])
        mailView.addSubview(maillable)
        NSLayoutConstraint.activate([
            maillable.centerYAnchor.constraint(equalTo: mailView.centerYAnchor, constant: 0),
            maillable.leadingAnchor.constraint(equalTo: mailView.leadingAnchor, constant: 30),
            maillable.heightAnchor.constraint(equalToConstant: 50),
            maillable.widthAnchor.constraint(equalToConstant: 50)
            ])
        mailView.addSubview(mail)
        NSLayoutConstraint.activate([
            mail.centerYAnchor.constraint(equalTo: mailView.centerYAnchor, constant: 0),
            mail.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            mail.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            mail.heightAnchor.constraint(equalToConstant: 25),
//            mail.widthAnchor.constraint(equalToConstant: 60)
            ])
        centerView.addSubview(line5)
        NSLayoutConstraint.activate([
            line5.topAnchor.constraint(equalTo: mailView.bottomAnchor, constant: 1),
            line5.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
            line5.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
            line5.heightAnchor.constraint(equalToConstant: 1)
            ])
        // phone
        centerView.addSubview(phoneView)
        NSLayoutConstraint.activate([
            phoneView.topAnchor.constraint(equalTo: mailView.bottomAnchor, constant: 1),
            phoneView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            phoneView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            phoneView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        phoneView.addSubview(pollimage6)
//        NSLayoutConstraint.activate([
//            pollimage6.centerYAnchor.constraint(equalTo: phoneView.centerYAnchor, constant: 0),
//            pollimage6.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 30),
//            pollimage6.heightAnchor.constraint(equalToConstant: 15),
//            pollimage6.widthAnchor.constraint(equalToConstant: 15)
//            ])
        phoneView.addSubview(phonelable)
        NSLayoutConstraint.activate([
            phonelable.centerYAnchor.constraint(equalTo: phoneView.centerYAnchor, constant: 0),
            phonelable.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 30),
            phonelable.heightAnchor.constraint(equalToConstant: 13),
            phonelable.widthAnchor.constraint(equalToConstant: 50)
            ])
        phoneView.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.centerYAnchor.constraint(equalTo: phoneView.centerYAnchor, constant: 0),
            phone.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            phone.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            phone.heightAnchor.constraint(equalToConstant: 25)
            ])
//        centerView.addSubview(line6)
//        NSLayoutConstraint.activate([
//            line6.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 1),
//            line6.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
//            line6.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
//            line6.heightAnchor.constraint(equalToConstant: 1)
//            ])
        // city
        centerView.addSubview(cityView)
        NSLayoutConstraint.activate([
            cityView.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 1),
            cityView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            cityView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            cityView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        cityView.addSubview(pollimage7)
//        NSLayoutConstraint.activate([
//            pollimage7.centerYAnchor.constraint(equalTo: cityView.centerYAnchor, constant: 0),
//            pollimage7.leadingAnchor.constraint(equalTo: cityView.leadingAnchor, constant: 30),
//            pollimage7.heightAnchor.constraint(equalToConstant: 15),
//            pollimage7.widthAnchor.constraint(equalToConstant: 15)
//            ])
        cityView.addSubview(citylable)
        NSLayoutConstraint.activate([
            citylable.centerYAnchor.constraint(equalTo: cityView.centerYAnchor, constant: 0),
            citylable.leadingAnchor.constraint(equalTo: cityView.leadingAnchor, constant: 30),
            citylable.heightAnchor.constraint(equalToConstant: 13),
            citylable.widthAnchor.constraint(equalToConstant: 50)
            ])
        cityView.addSubview(city)
        NSLayoutConstraint.activate([
            city.centerYAnchor.constraint(equalTo: cityView.centerYAnchor, constant: 0),
            city.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            city.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            city.heightAnchor.constraint(equalToConstant: 25)
            ])
//        centerView.addSubview(line7)
//        NSLayoutConstraint.activate([
//            line7.topAnchor.constraint(equalTo: cityView.bottomAnchor, constant: 1),
//            line7.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 2),
//            line7.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: -2),
//            line7.heightAnchor.constraint(equalToConstant: 1)
//            ])
        // number
        centerView.addSubview(numberView)
        NSLayoutConstraint.activate([
            numberView.topAnchor.constraint(equalTo: cityView.bottomAnchor, constant: 1),
            numberView.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0),
            numberView.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
//            numberView.heightAnchor.constraint(equalToConstant: 40),
            numberView.bottomAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 0)
            ])
//        numberView.addSubview(pollimage8)
//        NSLayoutConstraint.activate([
//            pollimage8.centerYAnchor.constraint(equalTo: numberView.centerYAnchor, constant: 0),
//            pollimage8.leadingAnchor.constraint(equalTo: numberView.leadingAnchor, constant: 30),
//            pollimage8.heightAnchor.constraint(equalToConstant: 15),
//            pollimage8.widthAnchor.constraint(equalToConstant: 15)
//            ])
        numberView.addSubview(numberlable)
        NSLayoutConstraint.activate([
            numberlable.topAnchor.constraint(equalTo: numberView.topAnchor, constant: 5),
            numberlable.leadingAnchor.constraint(equalTo: numberView.leadingAnchor, constant: 30),
            numberlable.heightAnchor.constraint(equalToConstant: 60),
            numberlable.widthAnchor.constraint(equalToConstant: 60)
            ])
        numberView.addSubview(number)
        NSLayoutConstraint.activate([
            number.centerYAnchor.constraint(equalTo: numberView.centerYAnchor, constant: 0),
            number.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            number.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0),
            number.heightAnchor.constraint(equalToConstant: 25),
            
            ])
        bottonView.addSubview(editButton)
        NSLayoutConstraint.activate([
            editButton.bottomAnchor.constraint(equalTo: bottonView.bottomAnchor, constant: -20),
            editButton.centerXAnchor.constraint(equalTo: mailView.centerXAnchor, constant: 0),
            editButton.heightAnchor.constraint(equalToConstant: 30),
            editButton.widthAnchor.constraint(equalToConstant: 150)
            ])
      
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
