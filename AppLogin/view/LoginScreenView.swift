//
//  LoginScreenView.swift
//  AppLogin
//
//  Created by Kaue Ludovico on 03/03/23.
//

import UIKit

class LoginScreenView: UIView {
    
    lazy var usernameTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .line
        textField.text = "admin"
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .line
        textField.text = "password123"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        addSubview(usernameTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        setConstraints()
    }
    
    func setConstraints() {
        usernameTextField.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 300, left: 16, bottom: 0, right: 16),
            size: .init(width: 363, height: 40))
        
        passwordTextField.anchor(
            top: usernameTextField.bottomAnchor,
            leading: usernameTextField.leadingAnchor,
            bottom: nil,
            trailing: usernameTextField.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(
                width: usernameTextField.bounds.size.width,
                height: 40)
        )
        
        loginButton.anchor(
            top: passwordTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 40))
        loginButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
    }
}
