//
//  RegistrationResponse.swift
//  ivy-sdk
//
//  Created by Praphin SP on 26/11/21.
//

import Foundation

class RegistrationResponse: Codable {
    
    var api_key: String?
    var api_limit: Int?
    var client_id: String?
    var client_name: String?
    var services_data: [ServiceData]?
    var token: String?
    var whitelisted_package_names: String?

    enum CodingKeys: String, CodingKey {
        case api_key, api_limit, client_id, client_name, services_data, token, whitelisted_package_names
    }
}

//class ServiceData: Codable {
//    var api_limit: Int?
//    var base_url: String?
//    var service: String?
//
//    enum CodingKeys: String, CodingKey {
//        case api_limit, base_url, service
//    }
//
//}
