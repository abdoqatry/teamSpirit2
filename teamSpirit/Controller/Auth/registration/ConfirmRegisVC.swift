//
//  ConfirmRegisVC.swift
//  teamSpirit
//
//  Created by Moe on 3/19/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ConfirmRegisVC: BaseController {

    var mainview : ConfirmRegesView!{
        return view as? ConfirmRegesView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ConfirmRegesView()
        setUnderLineButton()
        navigationController?.isNavigationBarHidden = false
        textFieldDelegat()
    }
    @objc func editTextField(textField : UITextField){
        let text = textField.text
        
        if (text?.utf16.count)! >= 1 {
            switch textField{
            case mainview.textField1:
                mainview.textField2.becomeFirstResponder()
            case mainview.textField2:
                mainview.textField3.becomeFirstResponder()
            case mainview.textField3:
                mainview.textField4.becomeFirstResponder()
            case mainview.textField4:
                mainview.textField4.resignFirstResponder()
            default:
                break
            }
        }
    }
    
    func textFieldDelegat(){
        mainview.textField1.delegate = self
        mainview.textField2.delegate = self
        mainview.textField3.delegate = self
        mainview.textField4.delegate = self
        
        mainview.textField1.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
        mainview.textField2.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
        mainview.textField3.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
        mainview.textField4.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
    }
    func setUnderLineButton(){
        let button =  NSLocalizedString("Resent the code", comment: "")
        let attributeString = NSMutableAttributedString(string:button ,
                                                        attributes: yourAttributes)
        mainview.resentButton.setAttributedTitle(attributeString, for: .normal)
    }
    // set up under line Button
    let yourAttributes : [NSAttributedString.Key: Any] = [
        NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14),
        NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1) ,
        NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue]
    
    
    
    
    
}
extension ConfirmRegisVC : UITextFieldDelegate{
    
    private func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
}
    



