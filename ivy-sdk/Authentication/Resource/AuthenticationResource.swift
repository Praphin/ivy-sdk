//
//  AuthenticationResource.swift
//  ivy-sdk
//
//  Created by Praphin SP on 23/11/21.
//

import Foundation

class AuthenticationResource {
    
    func authenticate(apiKey: String, apiSecret: String, completion: @escaping ((_ code: Int, _ response: [String:Any]?, _ error: Error?)->Void)) {
    
        var headers: [String : String] = [:]
        headers["X-Api-Key"] = apiKey
        headers["X-Api-Secret"] = apiSecret
        
        ApiResource().apiCallWithToken(urlStr: SDKVariables().urlConstant(url: URLConstants.authURL), method: .post, header: headers, parameters: nil) { (code, response, error) in
            if code == 200, let dict = response as? [String:Any] {
                print(dict)
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
