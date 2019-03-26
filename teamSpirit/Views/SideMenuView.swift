//
//  SideMenuView.swift
//  teamSpirit
//
//  Created by Moe on 3/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SideMenuView: UIView {

    var mainview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6056025257)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var cardView : UIImageView = {
       let view = UIImageView()
//        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.image = UIImage(named: "roundedRectangle1Copy20")
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var nameLabe : UILabel = {
       let label = UILabel()
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 15)
        label.text = "eden mohamed hazerd"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mailLabe : UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        label.text = "your mail"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mail : UILabel = {
       let label = UILabel()
        label.text = "fdsjdksjfl@kfj.com"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // phone
    var phoneLabe : UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        label.text = "your phone"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phone : UILabel = {
        let label = UILabel()
        label.text = "123456778"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // city
    var cityLabe : UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        label.text = "your city"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var city : UILabel = {
        let label = UILabel()
        label.text = "egypt"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // match
    var matchLabe : UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        label.text = "number of matches"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var match : UILabel = {
        let label = UILabel()
        label.text = "24"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var personalImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "layer1")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    // logoview
    var logoView : UIView = {
       let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var logoimage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "layer936Copy12-1")
        image.contentMode = .scaleAspectFill
//        image.backgroundColor = .blue
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var logolabel : UILabel = {
       let label = UILabel()
        label.text = "Home"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line1 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // friends
    var friendsView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var friendlabel : UILabel = {
        let label = UILabel()
        label.text = "friend list"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line2 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // police
    var policeView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var policelabel : UILabel = {
        let label = UILabel()
        label.text = "police condition"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // about us
    var aboutView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var aboutlabel : UILabel = {
        let label = UILabel()
        label.text = "about team spirit"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line4 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // my matches
    var matchesView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var matcheslabel : UILabel = {
        let label = UILabel()
        label.text = "my matches"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line5 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // my account
    var accountView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var accountlabel : UILabel = {
        let label = UILabel()
        label.text = "my Account"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line6 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // my notification
    var noteficationtView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var noteficationlabel : UILabel = {
        let label = UILabel()
        label.text = "notefication"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line7 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // language
    var laguageView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var languagelabel : UILabel = {
        let label = UILabel()
        label.text = "language"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var language : UILabel = {
        let label = UILabel()
        label.text = "english"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line8 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // invite
    var inviteView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var invitelabel : UILabel = {
        let label = UILabel()
        label.text = "sent match invite"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line9 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // invite
    var logoutView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var logoutlabel : UILabel = {
        let label = UILabel()
        label.text = "Log Out"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line10 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
            ])
        mainview.addSubview(cardView)
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 20),
            cardView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 15),
            cardView.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            cardView.heightAnchor.constraint(equalToConstant: 160)
            ])
        cardView.addSubview(nameLabe)
        NSLayoutConstraint.activate([
            nameLabe.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20),
            nameLabe.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            nameLabe.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(mailLabe)
        NSLayoutConstraint.activate([
            mailLabe.topAnchor.constraint(equalTo: nameLabe.bottomAnchor, constant: 5),
            mailLabe.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            mailLabe.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(mail)
        NSLayoutConstraint.activate([
            mail.topAnchor.constraint(equalTo: mailLabe.topAnchor, constant: 0),
            mail.leadingAnchor.constraint(equalTo: mailLabe.trailingAnchor, constant: 5),
            mail.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(phoneLabe)
        NSLayoutConstraint.activate([
            phoneLabe.topAnchor.constraint(equalTo: mailLabe.bottomAnchor, constant: 5),
            phoneLabe.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            phoneLabe.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: phoneLabe.topAnchor, constant: 0),
            phone.leadingAnchor.constraint(equalTo: phoneLabe.trailingAnchor, constant: 5),
            phone.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(cityLabe)
        NSLayoutConstraint.activate([
            cityLabe.topAnchor.constraint(equalTo: phoneLabe.bottomAnchor, constant: 5),
            cityLabe.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            cityLabe.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(city)
        NSLayoutConstraint.activate([
            city.topAnchor.constraint(equalTo: cityLabe.topAnchor, constant: 0),
            city.leadingAnchor.constraint(equalTo: cityLabe.trailingAnchor, constant: 5),
            city.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(matchLabe)
        NSLayoutConstraint.activate([
            matchLabe.topAnchor.constraint(equalTo: cityLabe.bottomAnchor, constant: 5),
            matchLabe.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            matchLabe.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(match)
        NSLayoutConstraint.activate([
            match.topAnchor.constraint(equalTo: matchLabe.topAnchor, constant: 0),
            match.leadingAnchor.constraint(equalTo: matchLabe.trailingAnchor, constant: 5),
            match.heightAnchor.constraint(equalToConstant: 13)
            ])
        cardView.addSubview(personalImage)
        NSLayoutConstraint.activate([
            personalImage.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20),
            personalImage.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10),
            personalImage.widthAnchor.constraint(equalToConstant: 70),
            personalImage.heightAnchor.constraint(equalToConstant: 100)
//            personalImage.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 0)
            ])
        mainview.addSubview(logoView)
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 0),
            logoView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            logoView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            logoView.heightAnchor.constraint(equalToConstant: 40)
            ])
        logoView.addSubview(logoimage)
        NSLayoutConstraint.activate([
            logoimage.centerYAnchor.constraint(equalTo: logoView.centerYAnchor, constant: 0),
            logoimage.leadingAnchor.constraint(equalTo: logoView.leadingAnchor, constant: 20),
            logoimage.heightAnchor.constraint(equalToConstant: 20),
            logoimage.widthAnchor.constraint(equalToConstant: 20)
            ])
        logoView.addSubview(logolabel)
        NSLayoutConstraint.activate([
            logolabel.centerYAnchor.constraint(equalTo: logoView.centerYAnchor, constant: 0),
            logolabel.leadingAnchor.constraint(equalTo: logoimage.trailingAnchor, constant: 15),
            logolabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 0),
            line1.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 1)
            ])
        // friend list
        mainview.addSubview(friendsView)
        NSLayoutConstraint.activate([
            friendsView.topAnchor.constraint(equalTo: line1.bottomAnchor, constant: 1),
            friendsView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            friendsView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            friendsView.heightAnchor.constraint(equalToConstant: 40)
            ])
       
        friendsView.addSubview(friendlabel)
        NSLayoutConstraint.activate([
            friendlabel.centerYAnchor.constraint(equalTo: friendsView.centerYAnchor, constant: 0),
            friendlabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            friendlabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: friendsView.bottomAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        // police
        mainview.addSubview(policeView)
        NSLayoutConstraint.activate([
            policeView.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 1),
            policeView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            policeView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            policeView.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        policeView.addSubview(policelabel)
        NSLayoutConstraint.activate([
            policelabel.centerYAnchor.constraint(equalTo: policeView.centerYAnchor, constant: 0),
            policelabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            policelabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: policeView.bottomAnchor, constant: 0),
            line3.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 1)
            ])
        // about us
        mainview.addSubview(aboutView)
        NSLayoutConstraint.activate([
            aboutView.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 1),
            aboutView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            aboutView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            aboutView.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        aboutView.addSubview(aboutlabel)
        NSLayoutConstraint.activate([
            aboutlabel.centerYAnchor.constraint(equalTo: aboutView.centerYAnchor, constant: 0),
            aboutlabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            aboutlabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.topAnchor.constraint(equalTo: aboutView.bottomAnchor, constant: 0),
            line4.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line4.heightAnchor.constraint(equalToConstant: 1)
            ])
        // my matches
        mainview.addSubview(matchesView)
        NSLayoutConstraint.activate([
            matchesView.topAnchor.constraint(equalTo: line4.bottomAnchor, constant: 1),
            matchesView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            matchesView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            matchesView.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        matchesView.addSubview(matcheslabel)
        NSLayoutConstraint.activate([
            matcheslabel.centerYAnchor.constraint(equalTo: matchesView.centerYAnchor, constant: 0),
            matcheslabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            matcheslabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line5)
        NSLayoutConstraint.activate([
            line5.topAnchor.constraint(equalTo: matchesView.bottomAnchor, constant: 0),
            line5.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line5.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line5.heightAnchor.constraint(equalToConstant: 1)
            ])
        // my account
        mainview.addSubview(accountView)
        NSLayoutConstraint.activate([
            accountView.topAnchor.constraint(equalTo: line5.bottomAnchor, constant: 1),
            accountView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            accountView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            accountView.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        accountView.addSubview(accountlabel)
        NSLayoutConstraint.activate([
            accountlabel.centerYAnchor.constraint(equalTo: accountView.centerYAnchor, constant: 0),
            accountlabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            accountlabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line6)
        NSLayoutConstraint.activate([
            line6.topAnchor.constraint(equalTo: accountView.bottomAnchor, constant: 0),
            line6.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line6.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line6.heightAnchor.constraint(equalToConstant: 1)
            ])
        // notefication
        mainview.addSubview(noteficationtView)
        NSLayoutConstraint.activate([
            noteficationtView.topAnchor.constraint(equalTo: line6.bottomAnchor, constant: 1),
            noteficationtView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            noteficationtView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            noteficationtView.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        noteficationtView.addSubview(noteficationlabel)
        NSLayoutConstraint.activate([
        noteficationlabel.centerYAnchor.constraint(equalTo: noteficationtView.centerYAnchor, constant: 0),
        noteficationlabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
        noteficationlabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line7)
        NSLayoutConstraint.activate([
            line7.topAnchor.constraint(equalTo: noteficationtView.bottomAnchor, constant: 0),
            line7.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line7.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line7.heightAnchor.constraint(equalToConstant: 1)
            ])
        // language
        mainview.addSubview(laguageView)
        NSLayoutConstraint.activate([
            laguageView.topAnchor.constraint(equalTo: line7.bottomAnchor, constant: 1),
            laguageView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            laguageView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            laguageView.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        laguageView.addSubview(languagelabel)
        NSLayoutConstraint.activate([
            languagelabel.centerYAnchor.constraint(equalTo: laguageView.centerYAnchor, constant: 0),
            languagelabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            languagelabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        laguageView.addSubview(language)
        NSLayoutConstraint.activate([
            language.topAnchor.constraint(equalTo: languagelabel.topAnchor, constant: 0),
            language.trailingAnchor.constraint(equalTo: laguageView.trailingAnchor, constant: -25),
            language.heightAnchor.constraint(equalToConstant: 20),
            language.widthAnchor.constraint(equalToConstant: 60)
            ])
        mainview.addSubview(line8)
        NSLayoutConstraint.activate([
            line8.topAnchor.constraint(equalTo: laguageView.bottomAnchor, constant: 0),
            line8.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line8.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line8.heightAnchor.constraint(equalToConstant: 1)
            ])
        // invite
        mainview.addSubview(inviteView)
        NSLayoutConstraint.activate([
            inviteView.topAnchor.constraint(equalTo: line8.bottomAnchor, constant: 1),
            inviteView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            inviteView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            inviteView.heightAnchor.constraint(equalToConstant: 40)
            ])
        inviteView.addSubview(invitelabel)
        NSLayoutConstraint.activate([
            invitelabel.centerYAnchor.constraint(equalTo: inviteView.centerYAnchor, constant: 0),
            invitelabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            invitelabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line9)
        NSLayoutConstraint.activate([
            line9.topAnchor.constraint(equalTo: inviteView.bottomAnchor, constant: 0),
            line9.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line9.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line9.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(logoutView)
        NSLayoutConstraint.activate([
            logoutView.topAnchor.constraint(equalTo: line9.bottomAnchor, constant: 1),
            logoutView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            logoutView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            logoutView.heightAnchor.constraint(equalToConstant: 40)
            ])
        logoutView.addSubview(logoutlabel)
        NSLayoutConstraint.activate([
            logoutlabel.centerYAnchor.constraint(equalTo: logoutView.centerYAnchor, constant: 0),
            logoutlabel.leadingAnchor.constraint(equalTo: logolabel.leadingAnchor, constant: 0),
            logoutlabel.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(line10)
        NSLayoutConstraint.activate([
            line10.topAnchor.constraint(equalTo: logoutView.bottomAnchor, constant: 0),
            line10.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line10.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line10.heightAnchor.constraint(equalToConstant: 1)
            ])
        
    }
    
}
