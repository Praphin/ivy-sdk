//
//  Registration.swift
//  ivy-sdk
//
//  Created by Praphin SP on 25/11/21.
//

import Foundation

public class Registration {

    public static func register(param: [String : Any], completion: @escaping ((_ code: Int, _ response: [String:Any]?, _ error: Error?)->Void)) {

        RegistrationBuilder().validate(data: param) { isValid in
           
            // data validation passed to SDK
            if isValid {
                
                OnboardingResource().register(param: param) { code, response, error in
                    completion(code, response, error)
                }
            } else {
                completion(400, nil, nil)
            }
        }
    }

}
