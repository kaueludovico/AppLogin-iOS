//
//  ViewController.swift
//  AppLogin
//
//  Created by Kaue Ludovico on 03/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let customView = LoginScreenView()
    let viewModel = LoginViewModel()
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        customView.loginButton.addTarget(self, action: #selector(validateUser), for: .touchUpInside)
        
    }
    
    @objc func validateUser() {
        let login = Login(
            username: customView.usernameTextField.text ?? "",
            password: customView.passwordTextField.text ?? "")
        
        viewModel.authUser(login: login) { response in
            self.showAlert(title: "Esse é o Token:", message: response.token)
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

