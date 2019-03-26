//
//  MyMatchesView.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class MyMatchesView: UIView {

    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = .clear
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.separatorStyle = .none
        tableV.register(MyMatchesCell.self, forCellReuseIdentifier: "MyMatchesCell")
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
            mainTableView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 0),
            mainTableView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
