//
//  playenameCell.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class playenameCell: UITableViewCell {

    var namelabel : UILabel = {
       let label = UILabel()
        label.text = "name" 
        label.font = UIFont.CairoBold(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setupview()
        
    }
    

    func setupview(){
        contentView.addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            namelabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            namelabel.heightAnchor.constraint(equalToConstant: 16)
            ])
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
