//
//  SingInView.swift
//  FlashChat
//
//  Created by Nickolay Vasilchenko on 14.09.2023.
//

import UIKit

class SignInView: UIView {
//MARK: - UI elements
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        label.text = "Let's register!"
        return label
    }()

    private var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  e-mail"
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        return textField
    }()

    private var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Password"
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.isSecureTextEntry = true
        return textField
    }()

    private var singInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Sing in", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        return button
    }()
//MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        fillHierarchy()
        setupLayouts()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//MARK: - View preparation
    private func configureView() {
        self.backgroundColor = .white
    }

    private func fillHierarchy() {
        self.addSubview(descriptionLabel)
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField )
        self.addSubview(singInButton)
    }

    private func setupLayouts() {
        descriptionLabel.setAnchors(top: self.topAnchor, left: self.leadingAnchor, right: self.trailingAnchor,
                                    padding: .init(top: 200, left: 30, bottom: 0, right: 30),
                                    size: .init(width: 0, height: 50))
        singInButton.setAnchors(botton: self.bottomAnchor, centerX: true,
                                padding: .init(top: 0, left: 0, bottom: 30, right: 0),
                                size: .init(width: 100, height: 40))
        loginTextField.setAnchors(top: self.topAnchor, left: self.leadingAnchor, right: self.trailingAnchor,
                                  padding: .init(top: 400, left: 30, bottom: 0, right: 30),
                                  size: .init(width: 0, height: 40))
        passwordTextField.setAnchors(top: loginTextField.bottomAnchor, left: loginTextField.leadingAnchor, right: loginTextField.trailingAnchor,
                                  padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                                  size: .init(width: 0, height: 40))
    }
}
