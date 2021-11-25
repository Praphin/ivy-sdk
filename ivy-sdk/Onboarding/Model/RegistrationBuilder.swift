//
//  RegistrationBuilder.swift
//  ivy-sdk
//
//  Created by Praphin SP on 25/11/21.
//

import Foundation

class RegistrationBuilder {
    
    func validate(data: [String : Any], completion: @escaping ((_ isValid: Bool)->Void)) {
        
        DebugLogger().log(data)
        
        guard let phone = data["phone"] as? String, phone.isValidMobileNo else {
            DebugLogger().log("Invalid phone")
            completion(false)
            return
        }
    
        guard let code = data["country_code"] as? String, code.count > 2 else {
            DebugLogger().log("Invalid country code")
            completion(false)
            return
        }
        
        completion(true)
    }
}
