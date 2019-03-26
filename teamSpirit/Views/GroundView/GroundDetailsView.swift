//
//  GroundDetailsView.swift
//  teamSpirit
//
//  Created by Moe on 3/22/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class GroundDetailsView: UIView {

    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var mainCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(GroundimageCell.self, forCellWithReuseIdentifier: "GroundimageCell")
        coll.translatesAutoresizingMaskIntoConstraints = false
        return coll
    }()
    var pagecontrol : UIPageControl = {
        let pag = UIPageControl()
       pag.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        pag.currentPage = 0
        pag.currentPageIndicatorTintColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
//        pag.backgroundColor = .red
        pag.numberOfPages = 3
        
        pag.translatesAutoresizingMaskIntoConstraints = false
        return pag
    }()
    var imagesView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var detailLabel : UILabel = {
       let lable = UILabel()
        lable.font = UIFont.CairoBold(of: 15)
        lable.text = "groud details"
        lable.sizeToFit()
        lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var sizeView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 0.8869863014)
        view.layer.cornerRadius = 4
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pallImage : UIImageView = {
        let imag = UIImageView()
        imag.contentMode = .scaleAspectFit
        imag.image = UIImage(named: "soccerCopy-1")
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var sizeLabel : UILabel = {
       let label = UILabel()
        label.text = "Size"
        label.font = UIFont.CairoRegular(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var size : UILabel = {
       let label = UILabel()
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "8x8"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var numberView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 0.8869863014)
        view.layer.cornerRadius = 4
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pallImage2 : UIImageView = {
        let imag = UIImageView()
        imag.contentMode = .scaleAspectFit
        imag.image = UIImage(named: "soccerCopy-1")
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var numberLabel : UILabel = {
        let label = UILabel()
        label.text = "number of player"
        label.font = UIFont.CairoRegular(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
       
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var number : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "12"
         label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var levelView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 0.8869863014)
        view.layer.cornerRadius = 4
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pallImage3 : UIImageView = {
        let imag = UIImageView()
        imag.contentMode = .scaleAspectFit
        imag.image = UIImage(named: "soccerCopy-1")
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var levelLabel : UILabel = {
        let label = UILabel()
        label.text = "ground level"
        label.font = UIFont.CairoRegular(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var level : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "8"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var kindView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 0.8869863014)
        view.layer.cornerRadius = 4
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pallImage4 : UIImageView = {
        let imag = UIImageView()
        imag.contentMode = .scaleAspectFit
        imag.image = UIImage(named: "soccerCopy-1")
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var kindLabel : UILabel = {
        let label = UILabel()
        label.text = "kind of ground"
        label.font = UIFont.CairoRegular(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var kind : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoBold(of: 13)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "negela"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ageView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 0.8869863014)
        view.layer.cornerRadius = 4
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pallImage5 : UIImageView = {
        let imag = UIImageView()
        imag.contentMode = .scaleAspectFit
        imag.image = UIImage(named: "soccerCopy-1")
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var ageLabel : UILabel = {
        let label = UILabel()
        label.text = "Average age"
        label.font = UIFont.CairoRegular(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var age : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoBold(of: 14)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "30"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var referView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2470588235, blue: 0.2549019608, alpha: 0.8869863014)
        view.layer.cornerRadius = 4
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pallImage6 : UIImageView = {
        let imag = UIImageView()
        imag.contentMode = .scaleAspectFit
        imag.image = UIImage(named: "soccerCopy-1")
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var referLabel : UILabel = {
        let label = UILabel()
        label.text = "refer name"
        label.font = UIFont.CairoRegular(of: 13)
        label.textColor = #colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6980392157, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var refer : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoBold(of: 14)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "name"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var playernamsLabe : UILabel = {
        let label = UILabel()
        label.font = UIFont.CairoBold(of: 14)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "names of player"
//        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = .clear
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorStyle = .none
        tableV.separatorColor = .clear
        tableV.register(playenameCell.self, forCellReuseIdentifier: "playenameCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    var confirmbutton : UIButton = {
       let butt = UIButton()
        butt.setTitle("confirm join match", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
//        butt.layer.cornerRadius = 14
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    func setupView(){
        addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainview.addSubview(mainCollectionView)
        NSLayoutConstraint.activate([
            mainCollectionView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 0),
            mainCollectionView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            mainCollectionView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            mainCollectionView.heightAnchor.constraint(equalToConstant: 130)
            ])
        mainview.addSubview(pagecontrol)
        NSLayoutConstraint.activate([
            pagecontrol.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 110),
            pagecontrol.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            pagecontrol.widthAnchor.constraint(equalToConstant: 70),
            pagecontrol.heightAnchor.constraint(equalToConstant: 20)
            ])
        mainview.addSubview(imagesView)
        NSLayoutConstraint.activate([
            imagesView.topAnchor.constraint(equalTo: mainCollectionView.bottomAnchor, constant: 0),
            imagesView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            imagesView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            imagesView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainview.addSubview(detailLabel)
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: imagesView.bottomAnchor, constant: 10),
            detailLabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 15),
            detailLabel.heightAnchor.constraint(equalToConstant: 15),
            
            ])
        mainview.addSubview(sizeView)
        NSLayoutConstraint.activate([
            sizeView.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 20),
            sizeView.heightAnchor.constraint(equalToConstant: 40),
            sizeView.widthAnchor.constraint(equalToConstant: 160),
            sizeView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 15)
            
            ])
        sizeView.addSubview(pallImage)
        NSLayoutConstraint.activate([
            pallImage.centerYAnchor.constraint(equalTo: sizeView.centerYAnchor, constant: 0),
            pallImage.leadingAnchor.constraint(equalTo: sizeView.leadingAnchor, constant: -10),
            pallImage.heightAnchor.constraint(equalToConstant: 20),
            pallImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        sizeView.addSubview(sizeLabel)
        NSLayoutConstraint.activate([
            sizeLabel.centerYAnchor.constraint(equalTo: sizeView.centerYAnchor, constant: 0),
            sizeLabel.leadingAnchor.constraint(equalTo: pallImage.trailingAnchor, constant: 10),
            sizeLabel.heightAnchor.constraint(equalToConstant: 13),
            sizeLabel.widthAnchor.constraint(equalToConstant: 110)
            ])
        sizeView.addSubview(size)
        NSLayoutConstraint.activate([
            size.centerYAnchor.constraint(equalTo: sizeView.centerYAnchor, constant: 0),
            size.trailingAnchor.constraint(equalTo: sizeView.trailingAnchor, constant: -10),
            size.heightAnchor.constraint(equalToConstant: 15),
            size.widthAnchor.constraint(equalToConstant: 40)
            ])
        mainview.addSubview(numberView)
        NSLayoutConstraint.activate([
            numberView.topAnchor.constraint(equalTo: sizeView.bottomAnchor, constant: 10),
            numberView.heightAnchor.constraint(equalToConstant: 40),
            numberView.widthAnchor.constraint(equalToConstant: 160),
            numberView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 15)
            
            ])
        numberView.addSubview(pallImage2)
        NSLayoutConstraint.activate([
            pallImage2.centerYAnchor.constraint(equalTo: numberView.centerYAnchor, constant: 0),
            pallImage2.leadingAnchor.constraint(equalTo: numberView.leadingAnchor, constant: -10),
            pallImage2.heightAnchor.constraint(equalToConstant: 20),
            pallImage2.widthAnchor.constraint(equalToConstant: 20)
            ])
        numberView.addSubview(numberLabel)
        NSLayoutConstraint.activate([
            numberLabel.centerYAnchor.constraint(equalTo: numberView.centerYAnchor, constant: 0),
            numberLabel.leadingAnchor.constraint(equalTo: pallImage2.trailingAnchor, constant: 10),
            numberLabel.heightAnchor.constraint(equalToConstant: 13),
            numberLabel.widthAnchor.constraint(equalToConstant: 110)
            ])
        numberView.addSubview(number)
        NSLayoutConstraint.activate([
            number.centerYAnchor.constraint(equalTo: numberView.centerYAnchor, constant: 0),
            number.trailingAnchor.constraint(equalTo: numberView.trailingAnchor, constant: -10),
            number.heightAnchor.constraint(equalToConstant: 15),
            number.widthAnchor.constraint(equalToConstant: 40)
            ])
        mainview.addSubview(levelView)
        NSLayoutConstraint.activate([
            levelView.topAnchor.constraint(equalTo: numberView.bottomAnchor, constant: 10),
            levelView.heightAnchor.constraint(equalToConstant: 40),
            levelView.widthAnchor.constraint(equalToConstant: 160),
            levelView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 15)
            
            ])
        levelView.addSubview(pallImage3)
        NSLayoutConstraint.activate([
            pallImage3.centerYAnchor.constraint(equalTo: levelView.centerYAnchor, constant: 0),
            pallImage3.leadingAnchor.constraint(equalTo: levelView.leadingAnchor, constant: -10),
            pallImage3.heightAnchor.constraint(equalToConstant: 20),
            pallImage3.widthAnchor.constraint(equalToConstant: 20)
            ])
        levelView.addSubview(levelLabel)
        NSLayoutConstraint.activate([
            levelLabel.centerYAnchor.constraint(equalTo: levelView.centerYAnchor, constant: 0),
            levelLabel.leadingAnchor.constraint(equalTo: pallImage3.trailingAnchor, constant: 10),
            levelLabel.heightAnchor.constraint(equalToConstant: 13),
            levelLabel.widthAnchor.constraint(equalToConstant: 110)
            ])
        levelView.addSubview(level)
        NSLayoutConstraint.activate([
            level.centerYAnchor.constraint(equalTo: levelView.centerYAnchor, constant: 0),
            level.trailingAnchor.constraint(equalTo: levelView.trailingAnchor, constant: -10),
            level.heightAnchor.constraint(equalToConstant: 15),
            level.widthAnchor.constraint(equalToConstant: 40)
            ])
        
        mainview.addSubview(kindView)
        NSLayoutConstraint.activate([
            kindView.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 20),
            kindView.heightAnchor.constraint(equalToConstant: 40),
            kindView.widthAnchor.constraint(equalToConstant: 160),
            kindView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -15)
            
            ])
        
        kindView.addSubview(pallImage4)
        NSLayoutConstraint.activate([
            pallImage4.centerYAnchor.constraint(equalTo: kindView.centerYAnchor, constant: 0),
            pallImage4.leadingAnchor.constraint(equalTo: kindView.leadingAnchor, constant: -10),
            pallImage4.heightAnchor.constraint(equalToConstant: 20),
            pallImage4.widthAnchor.constraint(equalToConstant: 20)
            ])
        kindView.addSubview(kindLabel)
        NSLayoutConstraint.activate([
            kindLabel.centerYAnchor.constraint(equalTo: kindView.centerYAnchor, constant: 0),
            kindLabel.leadingAnchor.constraint(equalTo: pallImage4.trailingAnchor, constant: 10),
            kindLabel.heightAnchor.constraint(equalToConstant: 13),
            kindLabel.widthAnchor.constraint(equalToConstant: 110)
            ])
        kindView.addSubview(kind)
        NSLayoutConstraint.activate([
            kind.centerYAnchor.constraint(equalTo: kindView.centerYAnchor, constant: 0),
            kind.trailingAnchor.constraint(equalTo: kindView.trailingAnchor, constant: -10),
            kind.heightAnchor.constraint(equalToConstant: 15),
            kind.widthAnchor.constraint(equalToConstant: 40)
            ])

        mainview.addSubview(ageView)
        NSLayoutConstraint.activate([
            ageView.topAnchor.constraint(equalTo: kindView.bottomAnchor, constant: 10),
            ageView.heightAnchor.constraint(equalToConstant: 40),
            ageView.widthAnchor.constraint(equalToConstant: 160),
            ageView.trailingAnchor.constraint(equalTo: kindView.trailingAnchor, constant: 0)
            ])
        ageView.addSubview(pallImage5)
        NSLayoutConstraint.activate([
            pallImage5.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0),
            pallImage5.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: -10),
            pallImage5.heightAnchor.constraint(equalToConstant: 20),
            pallImage5.widthAnchor.constraint(equalToConstant: 20)
            ])
        ageView.addSubview(ageLabel)
        NSLayoutConstraint.activate([
            ageLabel.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0),
            ageLabel.leadingAnchor.constraint(equalTo: pallImage5.trailingAnchor, constant: 10),
            ageLabel.heightAnchor.constraint(equalToConstant: 13),
            ageLabel.widthAnchor.constraint(equalToConstant: 110)
            ])
        ageView.addSubview(age)
        NSLayoutConstraint.activate([
            age.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0),
            age.trailingAnchor.constraint(equalTo: ageView.trailingAnchor, constant: -10),
            age.heightAnchor.constraint(equalToConstant: 15),
            age.widthAnchor.constraint(equalToConstant: 40)
            ])
        mainview.addSubview(referView)
        NSLayoutConstraint.activate([
            referView.topAnchor.constraint(equalTo: ageView.bottomAnchor, constant: 10),
            referView.heightAnchor.constraint(equalToConstant: 40),
            referView.widthAnchor.constraint(equalToConstant: 160),
            referView.trailingAnchor.constraint(equalTo: kindView.trailingAnchor, constant: 0)
            ])
        referView.addSubview(pallImage6)
        NSLayoutConstraint.activate([
            pallImage6.centerYAnchor.constraint(equalTo: referView.centerYAnchor, constant: 0),
            pallImage6.leadingAnchor.constraint(equalTo: referView.leadingAnchor, constant: -10),
            pallImage6.heightAnchor.constraint(equalToConstant: 20),
            pallImage6.widthAnchor.constraint(equalToConstant: 20)
            ])
        referView.addSubview(referLabel)
        NSLayoutConstraint.activate([
            referLabel.centerYAnchor.constraint(equalTo: referView.centerYAnchor, constant: 0),
            referLabel.leadingAnchor.constraint(equalTo: pallImage5.trailingAnchor, constant: 10),
            referLabel.heightAnchor.constraint(equalToConstant: 13),
            referLabel.widthAnchor.constraint(equalToConstant: 110)
            ])
        referView.addSubview(refer)
        NSLayoutConstraint.activate([
            refer.centerYAnchor.constraint(equalTo: referView.centerYAnchor, constant: 0),
            refer.trailingAnchor.constraint(equalTo: referView.trailingAnchor, constant: -10),
            refer.heightAnchor.constraint(equalToConstant: 15),
            refer.widthAnchor.constraint(equalToConstant: 40)
            ])
        mainview.addSubview(line)
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: referView.bottomAnchor, constant: 20),
            line.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(playernamsLabe)
        NSLayoutConstraint.activate([
            playernamsLabe.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 20),
            playernamsLabe.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20),
            playernamsLabe.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(confirmbutton)
        NSLayoutConstraint.activate([
            confirmbutton.heightAnchor.constraint(equalToConstant: 45),
            confirmbutton.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            confirmbutton.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            confirmbutton.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0)
            ])
        mainview.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: playernamsLabe.bottomAnchor, constant: 20),
            mainTableView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: confirmbutton.topAnchor, constant: 0)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
