//
//  SDKVariables.swift
//  ivy-sdk
//
//  Created by Praphin SP on 24/11/21.
//

import Foundation


class SDKVariables: NSObject {
    
    static let shared: SDKVariables = SDKVariables()

    override init() {
        super.init()
    }

    lazy var sdkVersion:String = {
        
        guard let sdkVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"]  as? String else {
            return ""
        }
        return sdkVersion
    }()

    lazy var buildNumber:String = {
        
        guard let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"]  as? String else {
            return "1.0.0"
        }
        return buildNumber
    }()

    var SDK_CLIENT_ID:String? = {
        
        if let path = Bundle.main.path(forResource: "SDK-Info", ofType: "plist") {

            if let dictionary = NSDictionary(contentsOfFile: path) {

                if let clientID = dictionary["SDK_CLIENT_ID"] as? String {
                    print("SDK_CLIENT_ID: \(clientID)")
                    return clientID
                }
            }
        }
        return nil
    }()

    var SDK_CLIENT_TOKEN:String? = {
        
        if let path = Bundle.main.path(forResource: "SDK-Info", ofType: "plist") {

            if let dictionary = NSDictionary(contentsOfFile: path) {

                if let clientToken = dictionary["SDK_CLIENT_TOKEN"] as? String {
                    print("SDK_CLIENT_ID: \(clientToken)")
                    return clientToken
                }
            }
        }
        return nil
    }()
    
    var host:String = {
        
        guard let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"]  as? String else {
            return "https://optimus.wellthy.me"
        }
        return "https://optimus.wellthy.me"
    }()
    
    func urlConstant(url: String) -> String {
        return host + url
    }

}
