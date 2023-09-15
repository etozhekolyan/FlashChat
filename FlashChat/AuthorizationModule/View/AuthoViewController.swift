//
//  ViewController.swift
//  FlashChat
//
//  Created by Nickolay Vasilchenko on 13.09.2023.
//

import UIKit

class AuthoViewController: UIViewController {
    
    private var authoView = AuthoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func loadView() {
        super.loadView()
        self.view = authoView
    }
}

