//
//  Registration.swift
//  ivy-sdk
//
//  Created by Praphin SP on 25/11/21.
//

import Foundation

public class Registration {

    public static func register(param: [String : Any], completion: @escaping ((_ code: Int, _ response: [String:Any]?, _ error: Error?)->Void)) {

        var datax: [String : Any] = [:]
        datax["phone"] = "6239279046"
        datax["country_code"] = "91"
        datax["name"] = "psp"
        datax["device_id"] = "836243nj3297829"
        datax["age"] = "50"
        datax["weight"] = "50"
        datax["weight_unit"] = "kg"
        datax["height"] = "50"
        datax["height_unit"] = "50"

        
        RegistrationBuilder().validate(data: datax) { isValid in
           
            // data validation passed to SDK
            if isValid {
                
                OnboardingResource().register(param: datax) { code, response, error in
                    
                }
            } else {
                
            }
        }
    }

}
