//
//  Authentication.swift
//  ivy-sdk
//
//  Created by Praphin SP on 11/11/21.
//

import Foundation

public class Authentication {

    public static func authSDK(completion: @escaping ((_ code: Int, _ response: [String:Any]?, _ error: Error?)->Void)) {

        print("SDK AUTHENTICATION STARTED")
        print("Version: \(SDKVariables.shared.sdkVersion)")
        
        guard let clientKey = SDKVariables.shared.SDK_CLIENT_ID else {
            print("INVALID CLIENT ID")
            completion(600, nil, nil)
            return
        }
        
        guard let clientToken = SDKVariables.shared.SDK_CLIENT_TOKEN else {
            print("INVALID TOKEN")
            completion(600, nil, nil)
            return
        }
        
        var headers: [String : String] = [:]
        headers["X-Api-Key"] = clientKey
        headers["X-Api-Secret"] = clientToken

        
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
