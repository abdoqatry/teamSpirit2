//
//  EvaluteVC.swift
//  teamSpirit
//
//  Created by Moe on 3/23/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import Cosmos

class EvaluteVC: UIViewController {

    var mainview : UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var contentView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5906999144)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var groundsizeLa : UILabel = {
    let label = UILabel()
        label.text = "ground size"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var sizeView : CosmosView = {
       let view = CosmosView()
        view.settings.fillMode = .half
        view.settings.starSize = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var groundtext : UITextField = {
        let text = UITextField()
        text.placeholder = "add description"
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 6
        text.clipsToBounds = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var groundservesLa : UILabel = {
        let label = UILabel()
        label.text = "ground servies"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var serviesView : CosmosView = {
        let view = CosmosView()
        view.settings.fillMode = .half
        view.settings.starSize = 16
//        view.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var groundservestext : UITextField = {
        let text = UITextField()
        text.placeholder = "add description"
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 6
        text.clipsToBounds = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    //
    var grounlandlab : UILabel = {
        let label = UILabel()
        label.text = "play ground"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.CairoBold(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var groundlandView : CosmosView = {
        let view = CosmosView()
        view.settings.fillMode = .half
        view.settings.starSize = 16
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var groundlandtext : UITextField = {
        let text = UITextField()
        text.placeholder = "add description"
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 6
        text.clipsToBounds = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    //
    var refeerlab : UILabel = {
        let label = UILabel()
        label.text = "refeer"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.CairoBold(of: 12)

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var refeerView : CosmosView = {
        let view = CosmosView()
        view.settings.fillMode = .half
        view.settings.starSize = 16
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var refeertext : UITextField = {
        let text = UITextField()
        text.placeholder = "add description"
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 6
        text.clipsToBounds = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var saveButton : UIButton = {
        let butt = UIButton()
        butt.setTitle("save", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        butt.layer.cornerRadius = 12
        butt.clipsToBounds = true
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var sizerate = 0.0
    var servesrate = 0.0
    var landrate = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.isOpaque = false
        contentView.isUserInteractionEnabled = true
        contentView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.diss)))
        groundlandView.didFinishTouchingCosmos = didFinishTouchingCosmos
        sizeView.didFinishTouchingCosmos = didFinishTouchingCosmos
        serviesView.didFinishTouchingCosmos = didFinishTouchingCosmos
        
        
       setiew()
        
    }
    @objc func diss(){
        dismiss(animated: true, completion: nil)
    }
    
    

    private func didFinishTouchingCosmos(_ rating: Double) {
    landrate = rating
        print(landrate)
    }
    
    
    func setiew(){
      
        view.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
        view.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            mainview.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            mainview.widthAnchor.constraint(equalToConstant: 330),
            mainview.heightAnchor.constraint(equalToConstant: 400)
            ])
        
        mainview.addSubview(groundsizeLa)
        NSLayoutConstraint.activate([
            groundsizeLa.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 30),
            groundsizeLa.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 40),
            groundsizeLa.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(sizeView)
        NSLayoutConstraint.activate([
            sizeView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 30),
            sizeView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            sizeView.heightAnchor.constraint(equalToConstant: 20),
            sizeView.widthAnchor.constraint(equalToConstant: 100)
            
            ])
        mainview.addSubview(groundtext)
        NSLayoutConstraint.activate([
            groundtext.topAnchor.constraint(equalTo: groundsizeLa.bottomAnchor, constant: 10),
            groundtext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            groundtext.heightAnchor.constraint(equalToConstant: 30),
            groundtext.widthAnchor.constraint(equalToConstant: 240)
            ])
        mainview.addSubview(groundservesLa)
        NSLayoutConstraint.activate([
            groundservesLa.topAnchor.constraint(equalTo: groundtext.bottomAnchor, constant: 10),
            groundservesLa.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 40),
            groundservesLa.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(serviesView)
        NSLayoutConstraint.activate([
            serviesView.topAnchor.constraint(equalTo: groundtext.bottomAnchor, constant: 10),
            serviesView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            serviesView.heightAnchor.constraint(equalToConstant: 20),
            serviesView.widthAnchor.constraint(equalToConstant: 100)
            
            ])
        mainview.addSubview(groundservestext)
        NSLayoutConstraint.activate([
            groundservestext.topAnchor.constraint(equalTo: groundservesLa.bottomAnchor, constant: 10),
    groundservestext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            groundservestext.heightAnchor.constraint(equalToConstant: 30),
            groundservestext.widthAnchor.constraint(equalToConstant: 240)
            ])
        
        mainview.addSubview(grounlandlab)
        NSLayoutConstraint.activate([
  grounlandlab.topAnchor.constraint(equalTo: groundservestext.bottomAnchor, constant: 10),
            grounlandlab.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 40),
            grounlandlab.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(groundlandView)
        NSLayoutConstraint.activate([
      groundlandView.topAnchor.constraint(equalTo: groundservestext.bottomAnchor, constant: 10),
        groundlandView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            groundlandView.heightAnchor.constraint(equalToConstant: 20),
            groundlandView.widthAnchor.constraint(equalToConstant: 100)
            
            ])
        mainview.addSubview(groundlandtext)
        NSLayoutConstraint.activate([
        groundlandtext.topAnchor.constraint(equalTo: grounlandlab.bottomAnchor, constant: 10),
            groundlandtext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            groundlandtext.heightAnchor.constraint(equalToConstant: 30),
            groundlandtext.widthAnchor.constraint(equalToConstant: 240)
            ])
        mainview.addSubview(refeerlab)
        NSLayoutConstraint.activate([
            refeerlab.topAnchor.constraint(equalTo: groundlandtext.bottomAnchor, constant: 10),
            refeerlab.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 40),
            refeerlab.heightAnchor.constraint(equalToConstant: 15)
            ])
        mainview.addSubview(refeerView)
        NSLayoutConstraint.activate([
        refeerView.topAnchor.constraint(equalTo: groundlandtext.bottomAnchor, constant: 10),
            refeerView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            refeerView.heightAnchor.constraint(equalToConstant: 20),
            refeerView.widthAnchor.constraint(equalToConstant: 100)
            
            ])
        mainview.addSubview(refeertext)
        NSLayoutConstraint.activate([
            refeertext.topAnchor.constraint(equalTo: refeerlab.bottomAnchor, constant: 10),
            refeertext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            refeertext.heightAnchor.constraint(equalToConstant: 30),
            refeertext.widthAnchor.constraint(equalToConstant: 240)
            ])
        mainview.addSubview(saveButton)
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: refeertext.bottomAnchor, constant: 60),
            saveButton.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            saveButton.widthAnchor.constraint(equalToConstant: 150),
            saveButton.heightAnchor.constraint(equalToConstant: 30)
            ])
        
    }
    

 

}
