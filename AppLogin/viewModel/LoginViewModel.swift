//
//  LoginViewModel.swift
//  AppLogin
//
//  Created by Kaue Ludovico on 03/03/23.
//

import Foundation

class LoginViewModel {
    
    func authUser(login: Login, completion: @escaping (ResponseToken) -> ()) {
        NetworkUtils.shared.authUser(login: login) { responseToken in
            completion(responseToken)
        }
    }
}
