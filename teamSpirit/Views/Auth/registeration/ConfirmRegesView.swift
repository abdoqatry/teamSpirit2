//
//  ConfirmRegesView.swift
//  teamSpirit
//
//  Created by Moe on 3/19/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ConfirmRegesView: UIView {


    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.9215686275, green: 0.4196078431, blue: 0.0862745098, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var logoImg : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "layer936Copy3")
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.isHidden = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var titleLable : UILabel = {
        let lable = UILabel()
        lable.text = "TEAM SPIRIT"
        lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lable.font = UIFont.boldSystemFont(ofSize: 13)
        //        lable.font = UIFont.CairoBold(of: 13)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var viewcode :UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), alpha: 0.5, x: 0, y: 1.5, blur: 3.5, spread: 0)
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var codeLabel : UILabel = {
        let label = UILabel()
        label.text = "enter code"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var validationLabel : UILabel = {
        let label = UILabel()
        label.text = "enter validation number has sent "
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phonNumLabel : UILabel = {
        let label = UILabel()
        label.text = "123456789 "
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var textField1 : UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        text.layer.cornerRadius = 5
        text.keyboardType = .numberPad
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var textField2 : UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        text.layer.cornerRadius = 5
        text.keyboardType = .numberPad
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var textField3 : UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        text.layer.cornerRadius = 5
        text.keyboardType = .numberPad
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var textField4 : UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        text.layer.cornerRadius = 5
        text.keyboardType = .numberPad
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var stackViewAcount: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [textField1, textField2, textField3,textField4])
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    var resentButton : UIButton = {
        let but = UIButton()
        //        but.setTitle("Resent the code", for: .normal)
        but.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
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
        mainView.addSubview(logoImg)
        NSLayoutConstraint.activate([
            logoImg.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            logoImg.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            logoImg.heightAnchor.constraint(equalToConstant: 79),
            logoImg.widthAnchor.constraint(equalToConstant: 73)
            ])
        mainView.addSubview(titleLable)
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: logoImg.bottomAnchor, constant: 30),
            titleLable.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            titleLable.heightAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(viewcode)
        NSLayoutConstraint.activate([
            viewcode.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 30),
            viewcode.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 24),
            viewcode.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -24),
            viewcode.heightAnchor.constraint(equalToConstant: 260)
            ])
        viewcode.addSubview(codeLabel)
        NSLayoutConstraint.activate([
            codeLabel.topAnchor.constraint(equalTo: viewcode.topAnchor, constant: 10),
            codeLabel.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            codeLabel.heightAnchor.constraint(equalToConstant: 16)
            ])
        viewcode.addSubview(validationLabel)
        NSLayoutConstraint.activate([
            validationLabel.topAnchor.constraint(equalTo: codeLabel.bottomAnchor, constant: 20),
            validationLabel.leadingAnchor.constraint(equalTo: viewcode.leadingAnchor, constant: 30),
            validationLabel.heightAnchor.constraint(equalToConstant: 16)
            ])
        viewcode.addSubview(phonNumLabel)
        NSLayoutConstraint.activate([
            phonNumLabel.topAnchor.constraint(equalTo: validationLabel.topAnchor, constant: 0),
            phonNumLabel.leadingAnchor.constraint(equalTo: validationLabel.trailingAnchor, constant: 3),
            phonNumLabel.heightAnchor.constraint(equalToConstant: 16)
            ])
        viewcode.addSubview(textField1)
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: validationLabel.bottomAnchor, constant: 25),
            //        textField1.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            textField1.heightAnchor.constraint(equalToConstant: 57),
            textField1.widthAnchor.constraint(equalToConstant: 40)
            ])
        viewcode.addSubview(textField2)
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: validationLabel.bottomAnchor, constant: 25),
            //        textField1.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            textField2.heightAnchor.constraint(equalToConstant: 57),
            textField2.widthAnchor.constraint(equalToConstant: 40)
            ])
        viewcode.addSubview(textField3)
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: validationLabel.bottomAnchor, constant: 25),
            //        textField1.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            textField3.heightAnchor.constraint(equalToConstant: 57),
            textField3.widthAnchor.constraint(equalToConstant: 40)
            ])
        viewcode.addSubview(textField4)
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: validationLabel.bottomAnchor, constant: 25),
            //        textField1.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            textField4.heightAnchor.constraint(equalToConstant: 57),
            textField4.widthAnchor.constraint(equalToConstant: 40)
            ])
        viewcode.addSubview(stackViewAcount)
        NSLayoutConstraint.activate([
            stackViewAcount.topAnchor.constraint(equalTo: validationLabel.bottomAnchor, constant: 30),
            stackViewAcount.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            stackViewAcount.heightAnchor.constraint(equalToConstant: 50),
            stackViewAcount.widthAnchor.constraint(equalToConstant: 200)
            
            ])
        viewcode.addSubview(resentButton)
        NSLayoutConstraint.activate([
            resentButton.topAnchor.constraint(equalTo: stackViewAcount.bottomAnchor, constant: 20),
            resentButton.centerXAnchor.constraint(equalTo: viewcode.centerXAnchor, constant: 0),
            resentButton.heightAnchor.constraint(equalToConstant: 16)
            ])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

