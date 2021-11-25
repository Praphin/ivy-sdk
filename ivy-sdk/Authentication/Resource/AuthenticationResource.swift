//
//  AuthenticationResource.swift
//  ivy-sdk
//
//  Created by Praphin SP on 23/11/21.
//

import Foundation

class AuthenticationResource {
    
    func authenticate(completion: @escaping ((_ code: Int, _ response: [String:Any]?, _ error: Error?)->Void)) {
            
        var header = [String: String]()
        header["X-Api-Key"] = SDKVariables.shared.SDK_CLIENT_ID ?? ""
        header["X-Api-Secret"] = SDKVariables.shared.SDK_CLIENT_TOKEN ?? ""
        header["X-App-Bundle"] = SDKVariables.shared.CLIENT_BUNDLE_ID ?? ""

        ApiResource().apiCallWithToken(urlStr: SDKVariables().urlConstant(url: URLConstants.authURL), method: .post, header: header, parameters: nil) { (code, response, error) in

            if code == 200, let dict = response as? [String:Any] {
                print(dict)
                if let data = dict[SDKConstants.data] as? [String:Any] {
                    if let token = data[SDKConstants.token] as? String {
                        SDKVariables.shared.saveValueInUserDefault(key: SDKConstants.authToken, value: token)
                    }
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
