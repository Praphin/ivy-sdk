//
//  Authentication.swift
//  ivy-sdk
//
//  Created by Praphin SP on 11/11/21.
//

import Foundation

public class Authentication {
    
    public static func authSDK() {
        
        if let path = Bundle.main.path(forResource: "SDK-Info", ofType: "plist") {
            
            if let dictionary = NSDictionary(contentsOfFile: path) {
                
                if let clientID = dictionary["SDK_CLIENT_ID"] as? String {
                    print("SDK_CLIENT_ID: \(clientID)")
                }
                if let bundleID = dictionary["BUNDLE_ID"] as? String {
                    print("BUNDLE_ID: \(bundleID)")
                }
            }

            print("AUTHENTICATION SUCCESS !!!!!!!!!!!!!!!!!")
        } else {
            print("AUTHENTICATION FAILED !!!!!!!!!!!!!!!!!")
        }

    }
}
