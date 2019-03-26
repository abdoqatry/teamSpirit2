//
//  forgetPass.swift
//  teamSpirit
//
//  Created by Moe on 3/19/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class forgetPassView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var TitleLAble : UILabel = {
        let lable = UILabel()
        //        img.backgroundColor = .red
        lable.layer.applySketchShadow(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), alpha: 0.5, x: 0, y: 1.5, blur: 3.5, spread: 0)
        lable.textAlignment = .center
        lable.font = UIFont.boldSystemFont(ofSize: 14)
        lable.textColor = .black
        lable.text = "write new password"
        lable.sizeToFit()
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    
    var phoneView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var phone : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var phoneIcon : UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "keySilhouetteSecurityToolInterfaceSymbolOfPassword")
        icon.contentMode = .scaleAspectFill
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var phoneText : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = " your Password"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
//        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var PasswordView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var password : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var passwordIcon : UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "keySilhouetteSecurityToolInterfaceSymbolOfPassword")
        icon.contentMode = .scaleAspectFill
        //        icon.layer.masksToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var passwordText : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "New password"
        text.layer.cornerRadius = 8
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //        text.layer.applySketchShadow()
        text.isSecureTextEntry = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
//    var forgetPass : UIButton = {
//        let butt = UIButton()
//        butt.setTitle("forget your password ?", for: .normal)
//        butt.titleLabel?.font = UIFont.systemFont(ofSize: 12)
//        butt.setTitleColor(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), for: .normal)
//
//        butt.translatesAutoresizingMaskIntoConstraints = false
//        return butt
//    }()
    
    var singIn : UIButton = {
        let butt = UIButton()
        butt.setTitle("Confirm", for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        butt.layer.cornerRadius = 20
        
        butt.layer.applySketchShadow()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUPView()
    }
    
    func setUPView(){
        
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(TitleLAble)
        NSLayoutConstraint.activate([
            TitleLAble.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            TitleLAble.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 150),
            TitleLAble.heightAnchor.constraint(equalToConstant: 20),
//            TitleLAble.widthAnchor.constraint(equalToConstant: 110)
            ])
        mainView.addSubview(phoneView)
        NSLayoutConstraint.activate([
            phoneView.topAnchor.constraint(equalTo: TitleLAble.bottomAnchor, constant: 40),
            phoneView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            phoneView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            phoneView.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        phoneView.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 0),
            phone.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 0),
            phone.bottomAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 0),
            phone.widthAnchor.constraint(equalToConstant: 39)
            ])
        phone.addSubview(phoneIcon)
        NSLayoutConstraint.activate([
            phoneIcon.centerXAnchor.constraint(equalTo: phone.centerXAnchor, constant: 0),
            phoneIcon.topAnchor.constraint(equalTo: phone.topAnchor, constant: 10),
            //            phoneIcon.bottomAnchor.constraint(equalTo: phone.bottomAnchor, constant: 10),
            phoneIcon.heightAnchor.constraint(equalToConstant: 50),
            phoneIcon.widthAnchor.constraint(equalToConstant: 20)
            ])
        phoneView.addSubview(phoneText)
        NSLayoutConstraint.activate([
            phoneText.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 0),
            phoneText.leadingAnchor.constraint(equalTo: phone.trailingAnchor, constant: -6),
            phoneText.bottomAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 0),
            phoneText.trailingAnchor.constraint(equalTo: phoneView.trailingAnchor, constant: 0)
            ])
        mainView.addSubview(PasswordView)
        NSLayoutConstraint.activate([
            PasswordView.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 20),
            PasswordView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            PasswordView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            PasswordView.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        PasswordView.addSubview(password)
        NSLayoutConstraint.activate([
            password.topAnchor.constraint(equalTo: PasswordView.topAnchor, constant: 0),
            password.trailingAnchor.constraint(equalTo: PasswordView.trailingAnchor, constant: 0),
            password.bottomAnchor.constraint(equalTo: PasswordView.bottomAnchor, constant: 0),
            password.widthAnchor.constraint(equalToConstant: 39)
            ])
        password.addSubview(passwordIcon)
        NSLayoutConstraint.activate([
            passwordIcon.topAnchor.constraint(equalTo: password.topAnchor, constant: 25),
            passwordIcon.leadingAnchor.constraint(equalTo: password.leadingAnchor, constant: 0),
            passwordIcon.trailingAnchor.constraint(equalTo: password.trailingAnchor, constant: 0),
            passwordIcon.bottomAnchor.constraint(equalTo: password.bottomAnchor, constant: -5)
            ])
        PasswordView.addSubview(passwordText)
        NSLayoutConstraint.activate([
            passwordText.topAnchor.constraint(equalTo: PasswordView.topAnchor, constant: 0),
            passwordText.trailingAnchor.constraint(equalTo: password.leadingAnchor, constant: 6),
            passwordText.bottomAnchor.constraint(equalTo: PasswordView.bottomAnchor, constant: 0),
            passwordText.leadingAnchor.constraint(equalTo: PasswordView.leadingAnchor, constant: 0)
            ])
        
//        mainView.addSubview(forgetPass)
//        NSLayoutConstraint.activate([
//            forgetPass.topAnchor.constraint(equalTo: PasswordView.bottomAnchor, constant: 30),
//            forgetPass.leadingAnchor.constraint(equalTo: PasswordView.leadingAnchor, constant: 0),
//            forgetPass.heightAnchor.constraint(equalToConstant: 16)
//            ])
        mainView.addSubview(singIn)
        NSLayoutConstraint.activate([
            singIn.topAnchor.constraint(equalTo: PasswordView.bottomAnchor, constant: 70),
            singIn.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            singIn.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            singIn.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
