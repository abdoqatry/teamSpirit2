//
//  StringExtension.swift
//  Motor Sports
//
//  Created by Youssef on 1/31/17.
//  Copyright © 2017 Youssef. All rights reserved.
//

import Foundation


extension String {
    
    var trimmedString: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var removeTags: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: String.CompareOptions.regularExpression, range: nil)
    }
    
    var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
//    var data: Bool {
//        let dateFormatterGet = DateFormatter()
//        dateFormatterGet.dateFormat = "yyyy-MM-dd"
//        let dataTist = DateFormatter(coder: )
//        return emailTest.evaluate(with: self)
//    }
    
}

extension Bool {
    var toInt: Int {
        return NSNumber(booleanLiteral: self).intValue
    }
}

extension Array {
    
    
    
    
    
    
}
