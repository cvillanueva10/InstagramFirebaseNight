//
//  ViewController.swift
//  InstagramNight
//
//  Created by Christopher Villanueva on 1/7/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let plusPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        return button
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .veryDarkBlue
        textField.tintColor = .white
        textField.textColor = .white
        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "Email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        textField.attributedPlaceholder = attributedPlaceholder
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .veryDarkBlue
        textField.tintColor = .white
        textField.textColor = .white
        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "Username", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        textField.attributedPlaceholder = attributedPlaceholder
        textField.borderStyle = .roundedRect
         textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .veryDarkBlue
        textField.tintColor = .white
        textField.textColor = .white
        let attributedPlaceholder: NSAttributedString = NSMutableAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        textField.attributedPlaceholder = attributedPlaceholder
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
         textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let inputsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 12
        return stackView
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .tealBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupInputFields()
    }
    
    fileprivate func setupUI(){
        view.backgroundColor = .darkBlue
        view.addSubview(plusPhotoButton)
        plusPhotoButton.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 40, left: nil, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 140, height: 140)
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    fileprivate func setupInputFields() {
        inputsStackView.addArrangedSubview(emailTextField)
        inputsStackView.addArrangedSubview(usernameTextField)
        inputsStackView.addArrangedSubview(passwordTextField)
        inputsStackView.addArrangedSubview(signUpButton)
        
        view.addSubview(inputsStackView)
        inputsStackView.anchor(top: plusPhotoButton.bottomAnchor, paddingTop: 20, left: view.safeAreaLayoutGuide.leftAnchor, paddingLeft: 40, bottom: nil, paddingBotton: 0, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: -40, width: 0, height: 240)
    }
}







