//
//  chatView.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class chatView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var navigation : UIView = {
        let view = UIView()
        view .backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.applySketchShadow()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var nameLable : UILabel = {
        let lable = UILabel()
        lable.text = "player name"
        lable.font = UIFont.CairoBold(of: 12)
        lable.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var backbutton : UIButton = {
        let but = UIButton()
        but.setImage(UIImage(named: "icMenu"), for: .normal)
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()
    
    lazy var chatTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = .clear
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
//        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.register(ChatCell.self, forCellReuseIdentifier: "ChatCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    var chatview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var chattext : UITextField = {
       let text = UITextField()
        text.placeholder = "massge"
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var sendbutton : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named: "icLogOut"), for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(navigation)
        NSLayoutConstraint.activate([
            navigation.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            navigation.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            navigation.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            navigation.heightAnchor.constraint(equalToConstant: 70)
            ])
        navigation.addSubview(nameLable)
        NSLayoutConstraint.activate([
            nameLable.leadingAnchor.constraint(equalTo: navigation.leadingAnchor, constant: 20),
            nameLable.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
            nameLable.heightAnchor.constraint(equalToConstant: 15)
            ])
        navigation.addSubview(backbutton)
        NSLayoutConstraint.activate([
            backbutton.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
            backbutton.trailingAnchor.constraint(equalTo: navigation.trailingAnchor, constant: -20),
            backbutton.heightAnchor.constraint(equalToConstant: 30),
            backbutton.widthAnchor.constraint(equalToConstant: 30)
            ])
        mainView.addSubview(chatview)
        NSLayoutConstraint.activate([
            chatview.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0),
            chatview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            chatview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            chatview.heightAnchor.constraint(equalToConstant: 60)
            ])
        chatview.addSubview(chattext)
        NSLayoutConstraint.activate([
            chattext.centerYAnchor.constraint(equalTo: chatview.centerYAnchor, constant: 0),
            chattext.leadingAnchor.constraint(equalTo: chatview.leadingAnchor, constant: 30),
            chattext.widthAnchor.constraint(equalToConstant: 270),
            chattext.heightAnchor.constraint(equalToConstant: 30)
            
            ])
        chatview.addSubview(sendbutton)
        NSLayoutConstraint.activate([
            sendbutton.centerYAnchor.constraint(equalTo: chatview.centerYAnchor, constant: 0),
            sendbutton.trailingAnchor.constraint(equalTo: chatview.trailingAnchor, constant: -10),
            sendbutton.heightAnchor.constraint(equalToConstant: 20),
            
            ])
        mainView.addSubview(chatTableView)
        NSLayoutConstraint.activate([
            chatTableView.topAnchor.constraint(equalTo: navigation.bottomAnchor, constant: 0),
            chatTableView.bottomAnchor.constraint(equalTo: chatview.topAnchor, constant: 0),
            chatTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            chatTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0)
            ])
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
