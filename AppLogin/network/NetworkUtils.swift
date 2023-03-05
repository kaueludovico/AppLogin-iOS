//
//  NetworkUtils.swift
//  AppLogin
//
//  Created by Kaue Ludovico on 03/03/23.
//

import Foundation
import Alamofire

class NetworkUtils {
    static var shared = NetworkUtils()
    
    public func authUser(login: Login, completion: @escaping (ResponseToken) -> ()) {
        
        let URL_BASE = "https://restful-booker.herokuapp.com/auth"
        
        let parameters = ["username" : login.username,
                          "password" : login.password]
        
        AF.request(URL_BASE, method: .post, parameters: parameters).response { response in
            if let data = response.data {
                let decoder = JSONDecoder()
                guard let jsonData = try? decoder.decode(ResponseToken.self, from: data) else { return }
                completion(jsonData)
            }
        }
    }
}
