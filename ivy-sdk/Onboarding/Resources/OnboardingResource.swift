//
//  OnboardingResource.swift
//  ivy-sdk
//
//  Created by Praphin SP on 25/11/21.
//

import Foundation

class OnboardingResource {
    
    func register(param: [String: Any], completion: @escaping ((_ code: Int, _ response: [String:Any]?, _ error: Error?)->Void)) {
            
        ApiResource().apiCallWithToken(urlStr: SDKVariables().urlConstant(url: URLConstants.registerURL), method: .post, header: nil, parameters: param) { (code, response, error) in

            if code == SDKErrorCode.code_200, let dict = response as? [String:Any] {
                if let data = dict[SDKConstants.data] as? [String:Any] {
                    completion(code, data, error)
                } else {
                    completion(code, nil, error)
                }
            } else {
                completion(code, nil, error)
            }
        }

    }
    
}
