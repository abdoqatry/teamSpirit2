//
//  PoliceView.swift
//  teamSpirit
//
//  Created by Moe on 3/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PoliceView: UIView {

    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var policeText : UITextView = {
       let text = UITextView()
        text.isEditable = false
        text.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        text.text = "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق."
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
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
        mainview.addSubview(policeText)
        NSLayoutConstraint.activate([
            policeText.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 20),
            policeText.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            policeText.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20),
            policeText.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0)
            ])
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
