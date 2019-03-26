//
//  RegisterView.swift
//  teamSpirit
//
//  Created by Moe on 3/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit


class RegisterView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
        scroll.contentSize.height = 800
        scroll.backgroundColor = .clear
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    var image : UIImageView = {
    let img = UIImageView()
    img.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        img.layer.cornerRadius = 30
        img.layer.masksToBounds = true
        img.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var userView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var user : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var userIcon : UIImageView = {
       let icon = UIImageView()
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var userText : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "user name"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // phone text
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
        icon.image = UIImage(named: "icon")
        icon.contentMode = .scaleAspectFill
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var phoneText : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "Phone number"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // email
    var emailView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var email : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var emailIcon : UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "envelope")
        icon.contentMode = .scaleAspectFill
//        icon.layer.masksToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var emailtext : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "email"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // password
    var passwordView : UIView = {
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
        view.layer.cornerRadius = 10
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
    var passwordtext : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "password"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //repassword
    var repasswordView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var repassword : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var repasswordIcon : UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "keySilhouetteSecurityToolInterfaceSymbolOfPassword")
        icon.contentMode = .scaleAspectFill
        //        icon.layer.masksToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var repasswordtext : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "repassword"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    // birth
    var birthView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var birth : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var birthicone : UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "calendarPageEmpty")
        icon.contentMode = .scaleAspectFill
        //        icon.layer.masksToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var birthText : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "Date of birth"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    // center
    var centerView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Center : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var centericone : UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "soccerCopy")
        icon.contentMode = .scaleAspectFill
        //        icon.layer.masksToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var centerText : UITextField = {
        let text = UITextField()
        text.textAlignment = .center
        text.placeholder = "center"
        text.layer.cornerRadius = 10
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        //         text.layer.applySketchShadow()
        text.keyboardType = .numberPad
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var notcheckButton : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named: "Layer 2"), for: .normal)
//        butt.backgroundColor = .
//        butt.isHidden = true
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var checkButton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named: "Layer 1"), for: .normal)
//        butt.backgroundColor = .red
        butt.isHidden = true
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var agreeLable : UILabel = {
       let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.text = "agree about"
        lable.sizeToFit()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var conditionButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("police and condition", for: .normal)
        butt.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        butt.setTitleColor( #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1), for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var singIn : UIButton = {
        let butt = UIButton()
        butt.setTitle("Sign in", for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        butt.layer.cornerRadius = 20
        
        butt.layer.applySketchShadow()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()

    
    var faceBook : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 17
        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "facebook1"), for: .normal)
        
        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var Google : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 17
        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "googlePlus"), for: .normal)
        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var twitter : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 17
        butt.backgroundColor = .white
         butt.setImage(UIImage(named: "twitter1"), for: .normal)
        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [Google, faceBook, twitter])
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    var accountView : UIView = {
       let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    var haveacount : UILabel = {
       let lable = UILabel()
        lable.text = "Have an account"
        lable.font = UIFont.systemFont(ofSize: 13)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var acountButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("sign in", for: .normal)
        butt.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        butt.setTitleColor( #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1), for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    lazy var stackViewAcount: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [haveacount, acountButt])
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpView()
    }
    
    func setUpView(){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        scrollView.addSubview(image)
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30),
            image.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            image.heightAnchor.constraint(equalToConstant: 60),
            image.widthAnchor.constraint(equalToConstant: 60),
//            image.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: )
            ])
        mainView.addSubview(userView)
        NSLayoutConstraint.activate([
            userView.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 40),
            userView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            userView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            userView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        userView.addSubview(user)
        NSLayoutConstraint.activate([
            user.topAnchor.constraint(equalTo: userView.topAnchor, constant: 0),
            user.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            user.bottomAnchor.constraint(equalTo: userView.bottomAnchor, constant: 0),
            user.widthAnchor.constraint(equalToConstant: 39)
            ])
        userView.addSubview(userText)
        NSLayoutConstraint.activate([
            userText.topAnchor.constraint(equalTo: userView.topAnchor, constant: 0),
            userText.leadingAnchor.constraint(equalTo: user.trailingAnchor, constant: -6),
            userText.bottomAnchor.constraint(equalTo: userView.bottomAnchor, constant: 0),
            userText.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 0)
            ])
        
        mainView.addSubview(phoneView)
        NSLayoutConstraint.activate([
            phoneView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 20),
            phoneView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            phoneView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            phoneView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        phoneView.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 0),
            phone.trailingAnchor.constraint(equalTo: phoneView.trailingAnchor, constant: 0),
            phone.bottomAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 0),
            phone.widthAnchor.constraint(equalToConstant: 39)
            ])
        phone.addSubview(phoneIcon)
        NSLayoutConstraint.activate([
            phoneIcon.centerXAnchor.constraint(equalTo: phone.centerXAnchor, constant: 0),
            phoneIcon.topAnchor.constraint(equalTo: phone.topAnchor, constant: 5),
//            phoneIcon.bottomAnchor.constraint(equalTo: phone.bottomAnchor, constant: 10),
            phoneIcon.heightAnchor.constraint(equalToConstant: 50),
            phoneIcon.widthAnchor.constraint(equalToConstant: 20)
            ])
        phoneView.addSubview(phoneText)
        NSLayoutConstraint.activate([
            phoneText.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 0),
            phoneText.trailingAnchor.constraint(equalTo: phone.leadingAnchor, constant: 6),
            phoneText.bottomAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 0),
            phoneText.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 0)
            ])
        // email
        mainView.addSubview(emailView)
        NSLayoutConstraint.activate([
            emailView.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 20),
            emailView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            emailView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            emailView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        emailView.addSubview(email)
        NSLayoutConstraint.activate([
            email.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 0),
            email.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: 0),
            email.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 0),
            email.widthAnchor.constraint(equalToConstant: 39)
            ])
        email.addSubview(emailIcon)
        NSLayoutConstraint.activate([
            emailIcon.topAnchor.constraint(equalTo: email.topAnchor, constant: 15),
            emailIcon.leadingAnchor.constraint(equalTo: email.leadingAnchor, constant: 0),
            emailIcon.trailingAnchor.constraint(equalTo: email.trailingAnchor, constant: 0),
            emailIcon.bottomAnchor.constraint(equalTo: email.bottomAnchor, constant: -5)

            ])
        emailView.addSubview(emailtext)
        NSLayoutConstraint.activate([
            emailtext.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 0),
            emailtext.trailingAnchor.constraint(equalTo: email.leadingAnchor, constant: 6),
            emailtext.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 0),
            emailtext.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 0)
            ])
        // password
        mainView.addSubview(passwordView)
        NSLayoutConstraint.activate([
            passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 20),
            passwordView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            passwordView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            passwordView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        passwordView.addSubview(password)
        NSLayoutConstraint.activate([
            password.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 0),
            password.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0),
            password.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 0),
            password.widthAnchor.constraint(equalToConstant: 39)
            ])
        password.addSubview(passwordIcon)
        NSLayoutConstraint.activate([
            passwordIcon.topAnchor.constraint(equalTo: password.topAnchor, constant: 15),
            passwordIcon.leadingAnchor.constraint(equalTo: password.leadingAnchor, constant: 0),
            passwordIcon.trailingAnchor.constraint(equalTo: password.trailingAnchor, constant: 0),
            passwordIcon.bottomAnchor.constraint(equalTo: password.bottomAnchor, constant: -5)
            ])
        passwordView.addSubview(passwordtext)
        NSLayoutConstraint.activate([
            passwordtext.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 0),
            passwordtext.trailingAnchor.constraint(equalTo: password.leadingAnchor, constant: 6),
            passwordtext.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 0),
            passwordtext.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0)
            ])
        // repassword
        mainView.addSubview(repasswordView)
        NSLayoutConstraint.activate([
            repasswordView.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 20),
            repasswordView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            repasswordView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            repasswordView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        repasswordView.addSubview(repassword)
        NSLayoutConstraint.activate([
            repassword.topAnchor.constraint(equalTo: repasswordView.topAnchor, constant: 0),
            repassword.trailingAnchor.constraint(equalTo: repasswordView.trailingAnchor, constant: 0),
            repassword.bottomAnchor.constraint(equalTo: repasswordView.bottomAnchor, constant: 0),
            repassword.widthAnchor.constraint(equalToConstant: 39)
            ])
        repassword.addSubview(repasswordIcon)
        NSLayoutConstraint.activate([
            repasswordIcon.topAnchor.constraint(equalTo: repassword.topAnchor, constant: 15),
            repasswordIcon.leadingAnchor.constraint(equalTo: repassword.leadingAnchor, constant: 0),
            repasswordIcon.trailingAnchor.constraint(equalTo: repassword.trailingAnchor, constant: 0),
            repasswordIcon.bottomAnchor.constraint(equalTo: repassword.bottomAnchor, constant: -5)
            ])
        repasswordView.addSubview(repasswordtext)
        NSLayoutConstraint.activate([
            repasswordtext.topAnchor.constraint(equalTo: repasswordView.topAnchor, constant: 0),
            repasswordtext.trailingAnchor.constraint(equalTo: repassword.leadingAnchor, constant: 6),
            repasswordtext.bottomAnchor.constraint(equalTo: repasswordView.bottomAnchor, constant: 0),
            repasswordtext.leadingAnchor.constraint(equalTo: repasswordView.leadingAnchor, constant: 0)
            ])
        
        // dateofbirth
        mainView.addSubview(birthView)
        NSLayoutConstraint.activate([
            birthView.topAnchor.constraint(equalTo: repasswordView.bottomAnchor, constant: 20),
            birthView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            birthView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            birthView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        birthView.addSubview(birth)
        NSLayoutConstraint.activate([
            birth.topAnchor.constraint(equalTo: birthView.topAnchor, constant: 0),
            birth.trailingAnchor.constraint(equalTo: birthView.trailingAnchor, constant: 0),
            birth.bottomAnchor.constraint(equalTo: birthView.bottomAnchor, constant: 0),
            birth.widthAnchor.constraint(equalToConstant: 39)
            ])
        birth.addSubview(birthicone)
        NSLayoutConstraint.activate([
            birthicone.topAnchor.constraint(equalTo: birth.topAnchor, constant: 20),
            birthicone.leadingAnchor.constraint(equalTo: birth.leadingAnchor, constant: 0),
            birthicone.trailingAnchor.constraint(equalTo: birth.trailingAnchor, constant: 0),
            birthicone.bottomAnchor.constraint(equalTo: birth.bottomAnchor, constant: -5)
            
            ])
        birthView.addSubview(birthText)
        NSLayoutConstraint.activate([
            birthText.topAnchor.constraint(equalTo: birthView.topAnchor, constant: 0),
            birthText.trailingAnchor.constraint(equalTo: birth.leadingAnchor, constant: 6),
            birthText.bottomAnchor.constraint(equalTo: birthView.bottomAnchor, constant: 0),
            birthText.leadingAnchor.constraint(equalTo: birthView.leadingAnchor, constant: 0)
            ])
        // center
        mainView.addSubview(centerView)
        NSLayoutConstraint.activate([
            centerView.topAnchor.constraint(equalTo: birthView.bottomAnchor, constant: 20),
            centerView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            centerView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            centerView.heightAnchor.constraint(equalToConstant: 42)
            ])
        
        centerView.addSubview(Center)
        NSLayoutConstraint.activate([
            Center.topAnchor.constraint(equalTo: centerView.topAnchor, constant: 0),
            Center.trailingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 0),
            Center.bottomAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 0),
            Center.widthAnchor.constraint(equalToConstant: 39)
            ])
        Center.addSubview(centericone)
        NSLayoutConstraint.activate([
            centericone.topAnchor.constraint(equalTo: Center.topAnchor, constant: 20),
            centericone.leadingAnchor.constraint(equalTo: Center.leadingAnchor, constant: 0),
            centericone.trailingAnchor.constraint(equalTo: Center.trailingAnchor, constant: 0),
            centericone.bottomAnchor.constraint(equalTo: Center.bottomAnchor, constant: -5)
            
            ])
        
        centerView.addSubview(centerText)
        NSLayoutConstraint.activate([
            centerText.topAnchor.constraint(equalTo: centerView.topAnchor, constant: 0),
            centerText.trailingAnchor.constraint(equalTo: Center.leadingAnchor, constant: 6),
            centerText.bottomAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 0),
            centerText.leadingAnchor.constraint(equalTo: centerView.leadingAnchor, constant: 0)
            ])
        scrollView.addSubview(checkButton)
        NSLayoutConstraint.activate([
            checkButton.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            checkButton.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 28),
            checkButton.heightAnchor.constraint(equalToConstant: 11),
            checkButton.widthAnchor.constraint(equalToConstant: 9)
            ])
        scrollView.addSubview(notcheckButton)
        NSLayoutConstraint.activate([
            notcheckButton.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            notcheckButton.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 28),
            notcheckButton.heightAnchor.constraint(equalToConstant: 11),
            notcheckButton.widthAnchor.constraint(equalToConstant: 9)
            ])
        scrollView.addSubview(agreeLable)
        NSLayoutConstraint.activate([
            agreeLable.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 28),
            agreeLable.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor, constant: 5),
            agreeLable.heightAnchor.constraint(equalToConstant: 13),
            
            ])
        scrollView.addSubview(conditionButt)
        NSLayoutConstraint.activate([
            conditionButt.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 28),
            conditionButt.leadingAnchor.constraint(equalTo: agreeLable.trailingAnchor, constant: 5),
            conditionButt.heightAnchor.constraint(equalToConstant: 13)
            
            ])
        scrollView.addSubview(singIn)
        NSLayoutConstraint.activate([
            singIn.topAnchor.constraint(equalTo: conditionButt.bottomAnchor, constant: 30),
            singIn.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            singIn.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            singIn.heightAnchor.constraint(equalToConstant: 45)
            ])
        scrollView.addSubview(faceBook)
        NSLayoutConstraint.activate([
            faceBook.heightAnchor.constraint(equalToConstant: 34),
            faceBook.widthAnchor.constraint(equalToConstant: 34),
//            faceBook.bottomAnchor.constraint(equalTo: account.topAnchor, constant: 10),
//            faceBook.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0)
            
            ])
        scrollView.addSubview(twitter)
        NSLayoutConstraint.activate([
            twitter.heightAnchor.constraint(equalToConstant: 34),
            twitter.widthAnchor.constraint(equalToConstant: 34)
            ])
        scrollView.addSubview(Google)
        NSLayoutConstraint.activate([
            Google.heightAnchor.constraint(equalToConstant: 34),
            Google.widthAnchor.constraint(equalToConstant: 34)
            ])
        scrollView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: singIn.bottomAnchor, constant: 15),
            stackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            stackView.widthAnchor.constraint(equalToConstant: 130),
            stackView.heightAnchor.constraint(equalToConstant: 40)
            ])
        accountView.addSubview(haveacount)
        NSLayoutConstraint.activate([
//            haveacount.leadingAnchor.constraint(equalTo: accountView.leadingAnchor, constant: 10),
//            haveacount.topAnchor.constraint(equalTo: accountView.topAnchor, constant: 3),
            haveacount.heightAnchor.constraint(equalToConstant: 14),
//            haveacount.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        scrollView.addSubview(acountButt)
        NSLayoutConstraint.activate([
            acountButt.heightAnchor.constraint(equalToConstant: 14),
//            acountButt.widthAnchor.constraint(equalToConstant: 50)
            ])
        scrollView.addSubview(stackViewAcount)
        NSLayoutConstraint.activate([
            stackViewAcount.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            stackViewAcount.widthAnchor.constraint(equalToConstant: 150),
            stackViewAcount.heightAnchor.constraint(equalToConstant: 50),
            stackViewAcount.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 5)
            ])
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
