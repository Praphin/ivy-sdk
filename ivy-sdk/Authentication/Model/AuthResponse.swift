//
//  AuthResponse.swift
//  ivy-sdk
//
//  Created by Praphin SP on 26/11/21.
//

import Foundation

class AuthResponse: Codable {
    
    var api_key: String?
    var api_limit: Int?
    var client_id: Int?
    var client_name: String?
   // var services_data: [ServiceData]?
    var token: String?
    var whitelisted_package_names: [String]?

    enum CodingKeys: String, CodingKey {
        case api_key, api_limit, client_id, client_name, token, whitelisted_package_names
    }
    
    func response() -> [String : Any] {
        var dict: [String : Any] = [:]
        dict["client_id"] = self.client_id
        dict["api_limit"] = self.api_limit
        return dict
    }
}

class ServiceData: Codable {
    var api_limit: Int?
    var base_url: String?
    var service: String?
    
    enum CodingKeys: String, CodingKey {
        case api_limit, base_url, service
    }

}
