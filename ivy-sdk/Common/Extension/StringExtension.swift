//
//  StringExtension.swift
//  ivy-sdk
//
//  Created by Praphin SP on 23/11/21.
//

import Foundation

extension String {

    var isNameValid:Bool {
        if count > 3 {
//            if AppLanguage.shared.language == AppLang.english {
                let characterSet = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMONPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz. ")
                return rangeOfCharacter(from: characterSet.inverted) == nil
//            }
//            else {
//                return true
//            }
        }
        return false

    }
    
    func isValidEmail() -> Bool {
        
        // Mail id Reg-Ex check.
        let testEmail = self.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testEmail)
    }

    func addingUrlPercentEncoding() -> String? {
        return self.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
    }


}
