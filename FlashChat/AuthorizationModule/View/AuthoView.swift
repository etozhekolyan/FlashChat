//
//  AuthoView.swift
//  FlashChat
//
//  Created by Nickolay Vasilchenko on 13.09.2023.
//

import UIKit

class AuthoView: UIView {
//MARK: - UI elements

    private var appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "⚡FlashChat"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        return label
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

    private var logInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Log in", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
//MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        fillHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//MARK: - View preparation
    private func configureView() {
        self.backgroundColor = .white
    }

    private func fillHierarchy() {
        self.addSubview(appNameLabel)
        self.addSubview(singInButton)
        self.addSubview(logInButton)
    }

    private func setupLayout() {
        appNameLabel.setAnchors(top: self.topAnchor, centerX: true,
                                padding: .init(top: 200, left: 0, bottom: 0, right: 0),
                                size: .init(width: 200, height: 70))
        singInButton.setAnchors(botton: self.bottomAnchor, centerX: true,
                                padding: .init(top: 0, left: 0, bottom: 30, right: 0),
                                size: .init(width: 100, height: 40))
        logInButton.setAnchors(botton: singInButton.bottomAnchor, centerX: true,
                               padding: .init(top: 0, left: 0, bottom: 65, right: 0),
                               size: .init(width: 100, height: 40))
    }
}
