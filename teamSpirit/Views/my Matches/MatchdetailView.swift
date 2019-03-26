//
//  MatchdetailView.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class MatchdetailView: UIView {

    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.01568627451, green: 0.003921568627, blue: 0.003921568627, alpha: 0.8605789812)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var backimage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer17")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var groundname : UILabel = {
        let label = UILabel()
        label.text = "amir abdula statduim"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var VSLabel : UILabel = {
        let label = UILabel()
        label.text = "VS"
        label.textColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.font = UIFont.CairoBold(of: 30)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var datelabel : UILabel = {
        let label = UILabel()
        label.text = "28 feb"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 10)
        label.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        label.layer.applySketchShadow()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var team1image : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer1")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var teamimage2 : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "layer11")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var resultLabel : UILabel = {
        let label = UILabel()
        label.text = "0 : 0"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 19)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var codeLabel : UILabel = {
        let label = UILabel()
        label.text = "match code"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        //        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var code : UILabel = {
        let label = UILabel()
        label.text = "1234"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        //        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var placeLable : UILabel = {
        let lable = UILabel()
        lable.text = "el Ryad"
        lable.textColor = #colorLiteral(red: 0.6862745098, green: 0.6941176471, blue: 0.1137254902, alpha: 1)
        lable.font = UIFont.CairoBold(of: 10)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var locationImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "placeholder1Copy4")
        imag.contentMode = .scaleAspectFill
        imag.clipsToBounds = true
        //        imag.layer.masksToBounds = true
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var startTime : UILabel = {
        let label = UILabel()
        label.text = "4 am -"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var endTime : UILabel = {
        let label = UILabel()
        label.text = "7 am "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var evalutielabel : UILabel = {
        let label = UILabel()
        label.text = " the evaluate "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var evalutielabel2 : UIButton = {
        let label = UIButton()
        label.setTitle("evaluate ", for: .normal)
        label.setTitleColor(#colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1), for: .normal)
        label.titleLabel?.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var evalutiegroundlabel : UILabel = {
        let label = UILabel()
        label.text = " evaluate ground "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var progrssview : UIProgressView = {
        let progrss = UIProgressView()
        progrss.progressTintColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        progrss.progress = 0.5
        progrss.layer.cornerRadius = 5
        progrss.clipsToBounds = true
        //        progrss.backgroundColor = #colorLiteral(red: 0.180194846, green: 0.1096431966, blue: 0.501960814, alpha: 0.3156571062)
        
        progrss.translatesAutoresizingMaskIntoConstraints = false
        return progrss
    }()
    var prograssImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "soccerCopy")
        image.contentMode = .scaleAspectFill
        image.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
//    var image : UIImageView = {
//       let image = UIImageView()
//        image.image = UIImage(named: "soccerCopy")
//        image.contentMode = .scaleAspectFill
//        image.translatesAutoresizingMaskIntoConstraints = false
//        return image
//    }()
    var evalutiereferlabel : UILabel = {
        let label = UILabel()
        label.text = " evaluate refer "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var progrssview2 : UIProgressView = {
        let progrss = UIProgressView()
        progrss.progressTintColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        progrss.progress = 0.5
        progrss.layer.cornerRadius = 5
        progrss.clipsToBounds = true
        //        progrss.backgroundColor = #colorLiteral(red: 0.180194846, green: 0.1096431966, blue: 0.501960814, alpha: 0.3156571062)
        
        progrss.translatesAutoresizingMaskIntoConstraints = false
        return progrss
    }()
    var prograssImage2 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "soccerCopy")
        image.contentMode = .scaleAspectFill
        image.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
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
        tableV.register(playerDetailCell.self, forCellReuseIdentifier: "playerDetailCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupview()
    }
    
    func setupview(){
        addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
           
            ])
        
        mainview.addSubview(backimage)
        NSLayoutConstraint.activate([
            backimage.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 0),
            backimage.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            backimage.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            backimage.heightAnchor.constraint(equalToConstant: 150)
            ])
        mainview.addSubview(groundname)
        NSLayoutConstraint.activate([
            groundname.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 10),
            groundname.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            groundname.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(VSLabel)
        NSLayoutConstraint.activate([
            VSLabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            VSLabel.topAnchor.constraint(equalTo: groundname.bottomAnchor, constant: 20),
            VSLabel.heightAnchor.constraint(equalToConstant: 30)
            ])
        mainview.addSubview(datelabel)
        NSLayoutConstraint.activate([
            datelabel.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -15),
            datelabel.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 10),
            datelabel.heightAnchor.constraint(equalToConstant: 18),
            datelabel.widthAnchor.constraint(equalToConstant: 70)
            
            ])
        mainview.addSubview(team1image)
        NSLayoutConstraint.activate([
            team1image.topAnchor.constraint(equalTo: groundname.bottomAnchor, constant: 17),
            team1image.trailingAnchor.constraint(equalTo: VSLabel.leadingAnchor, constant: -30),
            team1image.heightAnchor.constraint(equalToConstant: 60),
            team1image.widthAnchor.constraint(equalToConstant: 60)
            ])
        mainview.addSubview(teamimage2)
        NSLayoutConstraint.activate([
            teamimage2.topAnchor.constraint(equalTo: groundname.bottomAnchor, constant: 17),
            teamimage2.leadingAnchor.constraint(equalTo: VSLabel.trailingAnchor, constant: 30),
            teamimage2.heightAnchor.constraint(equalToConstant: 60),
            teamimage2.widthAnchor.constraint(equalToConstant: 60)
            ])
        mainview.addSubview(resultLabel)
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: VSLabel.bottomAnchor, constant: 10),
            resultLabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            resultLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        mainview.addSubview(codeLabel)
        NSLayoutConstraint.activate([
            codeLabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            codeLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 5),
            codeLabel.heightAnchor.constraint(equalToConstant: 14),
            ])
        mainview.addSubview(code)
        NSLayoutConstraint.activate([
            code.topAnchor.constraint(equalTo: codeLabel.topAnchor, constant: 0),
            code.leadingAnchor.constraint(equalTo: codeLabel.trailingAnchor, constant: 5),
            code.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(locationImage)
        NSLayoutConstraint.activate([
            locationImage.topAnchor.constraint(equalTo: code.bottomAnchor, constant: 5),
            locationImage.leadingAnchor.constraint(equalTo: groundname.leadingAnchor, constant: 0),
            locationImage.heightAnchor.constraint(equalToConstant: 20),
            locationImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainview.addSubview(placeLable)
        NSLayoutConstraint.activate([
            placeLable.heightAnchor.constraint(equalToConstant: 14),
            placeLable.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 5),
            placeLable.topAnchor.constraint(equalTo: locationImage.topAnchor, constant: 0)
            ])
        mainview.addSubview(startTime)
        NSLayoutConstraint.activate([
            startTime.topAnchor.constraint(equalTo: locationImage.topAnchor, constant: 0),
            startTime.leadingAnchor.constraint(equalTo: placeLable.trailingAnchor, constant: 5),
            startTime.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(endTime)
        NSLayoutConstraint.activate([
            endTime.topAnchor.constraint(equalTo: locationImage.topAnchor, constant: 0),
            endTime.leadingAnchor.constraint(equalTo: startTime.trailingAnchor, constant: 5),
            endTime.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(evalutielabel)
        NSLayoutConstraint.activate([
            evalutielabel.topAnchor.constraint(equalTo: backimage.bottomAnchor, constant: 15),
            evalutielabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20),
            evalutielabel.heightAnchor.constraint(equalToConstant: 13)
            ])
        mainview.addSubview(evalutielabel2)
        NSLayoutConstraint.activate([
            evalutielabel2.topAnchor.constraint(equalTo: backimage.bottomAnchor, constant: 15),
            evalutielabel2.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -20),
            evalutielabel2.heightAnchor.constraint(equalToConstant: 13)
            ])
        mainview.addSubview(evalutiegroundlabel)
        NSLayoutConstraint.activate([
            evalutiegroundlabel.topAnchor.constraint(equalTo: evalutielabel.bottomAnchor, constant: 5),
            evalutiegroundlabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            evalutiegroundlabel.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(progrssview)
        NSLayoutConstraint.activate([
            progrssview.topAnchor.constraint(equalTo: evalutiegroundlabel.bottomAnchor, constant: 5),
            progrssview.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            progrssview.widthAnchor.constraint(equalToConstant: 250),
            progrssview.heightAnchor.constraint(equalToConstant: 20)
            ])
        mainview.addSubview(prograssImage)
        NSLayoutConstraint.activate([
            prograssImage.topAnchor.constraint(equalTo: progrssview.topAnchor, constant: -5),
            prograssImage.trailingAnchor.constraint(equalTo: progrssview.leadingAnchor, constant: 5),
            prograssImage.heightAnchor.constraint(equalToConstant: 30),
            prograssImage.widthAnchor.constraint(equalToConstant: 30)
            ])
//        prograssImage.addSubview(image)
//        NSLayoutConstraint.activate([
//            image.centerXAnchor.constraint(equalTo: prograssImage.centerXAnchor, constant: 0),
////            image.topAnchor.constraint(equalTo: prograssImage.topAnchor, constant: 10)
//            image.centerYAnchor.constraint(equalTo: prograssImage.centerYAnchor, constant: 0),
//            image.heightAnchor.constraint(equalToConstant: 15),
//            image.widthAnchor.constraint(equalToConstant: 15)
//            ])
        mainview.addSubview(evalutiereferlabel)
        NSLayoutConstraint.activate([
            evalutiereferlabel.topAnchor.constraint(equalTo: progrssview.bottomAnchor, constant: 30),
            evalutiereferlabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            evalutiereferlabel.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(progrssview2)
        NSLayoutConstraint.activate([
            progrssview2.topAnchor.constraint(equalTo: evalutiereferlabel.bottomAnchor, constant: 5),
            progrssview2.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            progrssview2.widthAnchor.constraint(equalToConstant: 250),
            progrssview2.heightAnchor.constraint(equalToConstant: 20)
            ])
        mainview.addSubview(prograssImage2)
        NSLayoutConstraint.activate([
            prograssImage2.topAnchor.constraint(equalTo: progrssview2.topAnchor, constant: -5),
            prograssImage2.trailingAnchor.constraint(equalTo: progrssview2.leadingAnchor, constant: 5),
            prograssImage2.heightAnchor.constraint(equalToConstant: 30),
            prograssImage2.widthAnchor.constraint(equalToConstant: 30)
            ])
        mainview.addSubview(playernamsLabe)
        NSLayoutConstraint.activate([
            playernamsLabe.topAnchor.constraint(equalTo: progrssview2.bottomAnchor, constant: 25),
            playernamsLabe.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20),
            playernamsLabe.heightAnchor.constraint(equalToConstant: 16)
            ])
        mainview.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: playernamsLabe.bottomAnchor, constant: 10),
            mainTableView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0)
            ])
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
