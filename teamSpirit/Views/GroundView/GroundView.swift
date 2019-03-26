//
//  GroundView.swift
//  teamSpirit
//
//  Created by Moe on 3/21/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class GroundView: UIView {
    
    var mainview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.01568627451, green: 0.003921568627, blue: 0.003921568627, alpha: 0.8605789812)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = #colorLiteral(red: 0.01568627451, green: 0.003921568627, blue: 0.003921568627, alpha: 0.8605789812)
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorStyle = .none
        tableV.separatorColor = .clear
        tableV.register(groundCell.self, forCellReuseIdentifier: "groundCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setview()
    }
    
   
    func setview(){
        addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainview.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 20),
            mainTableView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
