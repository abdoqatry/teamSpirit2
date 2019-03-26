//
//  EditPersonaluserView.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditPersonaluserView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var contantImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "vectorSmartObject-1")
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.clipsToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var personalImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "layer1641")
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
//        image.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var nameLabel : UILabel = {
       let label = UILabel()
        label.text = "Eden hazerd"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ageLabel : UILabel = {
        let label = UILabel()
        label.text = "age :"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.font = UIFont.CairoRegular(of: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var age : UILabel = {
        let label = UILabel()
        label.text = "28"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoBold(of: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var numberLabel : UILabel = {
        let label = UILabel()
        label.text = "20"
        label.textColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var positionLabel : UILabel = {
        let label = UILabel()
        label.text = "defence"
        label.textColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var statusLabel : UILabel = {
        let label = UILabel()
        label.text = "status :"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var status : UILabel = {
        let label = UILabel()
        label.text = "avaliabel"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // email
    var emailLabel : UILabel = {
        let label = UILabel()
        label.text = "email :"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.numberOfLines = 0
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.CairoRegular(of: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mail : UILabel = {
        let label = UILabel()
        label.text = "avaliabel@ gmail.com"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // phone
    var phoneLabel : UILabel = {
        let label = UILabel()
        label.text = "phone number :"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.numberOfLines = 2
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.CairoRegular(of: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phone : UILabel = {
        let label = UILabel()
        label.text = "123748595"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // city
    var cityLabel : UILabel = {
        let label = UILabel()
        label.text = "city"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.numberOfLines = 2
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.CairoRegular(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var city : UILabel = {
        let label = UILabel()
        label.text = "egypt"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // matches
    var matchesLabel : UILabel = {
        let label = UILabel()
        label.text = "number of matches"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.numberOfLines = 2
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.CairoRegular(of: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var matches : UILabel = {
        let label = UILabel()
        label.text = "20"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var editButton : UIButton = {
       let but = UIButton()
        but.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        but.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        but.layer.cornerRadius = 8
        but.setTitle("Edit", for: .normal)
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setview()
        
    }
    
   
    func setview(){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(contantImage)
        NSLayoutConstraint.activate([
            contantImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 100),
            contantImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
//            contantImage.widthAnchor.constraint(equalToConstant: 330),
            contantImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            contantImage.heightAnchor.constraint(equalToConstant: 375)
            ])
        contantImage.addSubview(personalImage)
        NSLayoutConstraint.activate([
            personalImage.topAnchor.constraint(equalTo: contantImage.topAnchor, constant: 40),
            personalImage.leadingAnchor.constraint(equalTo: contantImage.leadingAnchor, constant: 20),
            personalImage.heightAnchor.constraint(equalToConstant: 60),
            personalImage.widthAnchor.constraint(equalToConstant: 60)
            ])
        contantImage.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: personalImage.centerYAnchor, constant: 0),
            nameLabel.leadingAnchor.constraint(equalTo: personalImage.trailingAnchor, constant: 5),
            nameLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        contantImage.addSubview(ageLabel)
        NSLayoutConstraint.activate([
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            ageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0),
            ageLabel.heightAnchor.constraint(equalToConstant: 13)
            ])
        contantImage.addSubview(age)
        NSLayoutConstraint.activate([
            age.topAnchor.constraint(equalTo: ageLabel.topAnchor, constant: 0),
            age.leadingAnchor.constraint(equalTo: ageLabel.trailingAnchor, constant: 5),
            age.heightAnchor.constraint(equalToConstant: 13)
            ])
        contantImage.addSubview(positionLabel)
        NSLayoutConstraint.activate([
            positionLabel.topAnchor.constraint(equalTo: contantImage.topAnchor, constant: 70),
            positionLabel.trailingAnchor.constraint(equalTo: contantImage.trailingAnchor, constant: -30),
            positionLabel.heightAnchor.constraint(equalToConstant: 17)
            ])
        contantImage.addSubview(numberLabel)
        NSLayoutConstraint.activate([
            numberLabel.bottomAnchor.constraint(equalTo: positionLabel.topAnchor, constant: -5),
//            numberLabel.trailingAnchor.constraint(equalTo: contantImage.trailingAnchor, constant: -30),
            numberLabel.centerXAnchor.constraint(equalTo: positionLabel.centerXAnchor, constant: 0),
            numberLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
      contantImage.addSubview(statusLabel)
        NSLayoutConstraint.activate([
            statusLabel.topAnchor.constraint(equalTo: personalImage.bottomAnchor, constant: 20),
            statusLabel.leadingAnchor.constraint(equalTo: personalImage.trailingAnchor, constant: 0),
            statusLabel.heightAnchor.constraint(equalToConstant: 24),
            statusLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
        contantImage.addSubview(status)
        NSLayoutConstraint.activate([
            status.topAnchor.constraint(equalTo: statusLabel.topAnchor, constant: 0),
            status.leadingAnchor.constraint(equalTo: statusLabel.trailingAnchor, constant: 10),
            status.heightAnchor.constraint(equalToConstant: 14)
            ])
        // mail
        contantImage.addSubview(emailLabel)
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 5),
            emailLabel.leadingAnchor.constraint(equalTo: personalImage.trailingAnchor, constant: 0),
//            emailLabel.heightAnchor.constraint(equalToConstant: 30),
            emailLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
        contantImage.addSubview(mail)
        NSLayoutConstraint.activate([
            mail.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 0),
            mail.leadingAnchor.constraint(equalTo: emailLabel.trailingAnchor, constant: 10),
            mail.heightAnchor.constraint(equalToConstant: 14)
            ])
        // phone
        contantImage.addSubview(phoneLabel)
        NSLayoutConstraint.activate([
            phoneLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            phoneLabel.leadingAnchor.constraint(equalTo: personalImage.trailingAnchor, constant: 0),
//            phoneLabel.heightAnchor.constraint(equalToConstant: 35),
            phoneLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
        contantImage.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: phoneLabel.topAnchor, constant: 0),
            phone.leadingAnchor.constraint(equalTo: phoneLabel.trailingAnchor, constant: 10),
            phone.heightAnchor.constraint(equalToConstant: 14)
            ])
        // city
        contantImage.addSubview(cityLabel)
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 5),
            cityLabel.leadingAnchor.constraint(equalTo: personalImage.trailingAnchor, constant: 0),
            //            phoneLabel.heightAnchor.constraint(equalToConstant: 35),
            cityLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
        contantImage.addSubview(city)
        NSLayoutConstraint.activate([
            city.topAnchor.constraint(equalTo: cityLabel.topAnchor, constant: 0),
            city.leadingAnchor.constraint(equalTo: cityLabel.trailingAnchor, constant: 10),
            city.heightAnchor.constraint(equalToConstant: 14)
            ])
        // matches
        contantImage.addSubview(matchesLabel)
        NSLayoutConstraint.activate([
            matchesLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 5),
            matchesLabel.leadingAnchor.constraint(equalTo: personalImage.trailingAnchor, constant: 0),
            //            phoneLabel.heightAnchor.constraint(equalToConstant: 35),
            matchesLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
        contantImage.addSubview(matches)
        NSLayoutConstraint.activate([
            matches.topAnchor.constraint(equalTo: matchesLabel.topAnchor, constant: 0),
            matches.leadingAnchor.constraint(equalTo: matchesLabel.trailingAnchor, constant: 10),
            matches.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainView.addSubview(editButton)
        NSLayoutConstraint.activate([
            editButton.topAnchor.constraint(equalTo: contantImage.bottomAnchor, constant: 70),
            editButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            editButton.widthAnchor.constraint(equalToConstant: 180),
            editButton.heightAnchor.constraint(equalToConstant: 40)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
