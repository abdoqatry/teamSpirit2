//
//  FriendsView.swift
//  teamSpirit
//
//  Created by Moe on 3/20/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FriendsView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var navigation : UIView = {
        let view = UIView()
        view .backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titleLable : UILabel = {
        let lable = UILabel()
        lable.text = "your friend"
        lable.font = UIFont.CairoBold(of: 12)
        lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var menubutton : UIButton = {
        let but = UIButton()
        but.setImage(UIImage(named: "icMenu"), for: .normal)
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()
    
    var searchBar : UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = NSLocalizedString("Search", comment: "")
        bar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        bar.layer.cornerRadius = 5
        bar.clipsToBounds = true
        bar.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.register(FriendsCell.self, forCellReuseIdentifier: "FriendsCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
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
//        mainView.addSubview(navigation)
//        NSLayoutConstraint.activate([
//            navigation.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
//            navigation.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
//            navigation.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
//            navigation.heightAnchor.constraint(equalToConstant: 70)
//            ])
//
//        navigation.addSubview(titleLable)
//        NSLayoutConstraint.activate([
//            titleLable.centerXAnchor.constraint(equalTo: navigation.centerXAnchor, constant: 0),
//            titleLable.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
//            titleLable.heightAnchor.constraint(equalToConstant: 17)
//            ])
//        navigation.addSubview(menubutton)
//        NSLayoutConstraint.activate([
//            menubutton.centerYAnchor.constraint(equalTo: navigation.centerYAnchor, constant: 0),
//            menubutton.trailingAnchor.constraint(equalTo: navigation.trailingAnchor, constant: -20),
//            menubutton.heightAnchor.constraint(equalToConstant: 40),
//            menubutton.widthAnchor.constraint(equalToConstant: 40)
//            ])
        mainView.addSubview(searchBar)
        NSLayoutConstraint.activate([
            searchBar.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            searchBar.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            searchBar.heightAnchor.constraint(equalToConstant: 40),
            searchBar.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20)
            ])
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 15),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
