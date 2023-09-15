//
//  SingInViewController.swift
//  FlashChat
//
//  Created by Nickolay Vasilchenko on 14.09.2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    private var signInView = SignInView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView()
        self.view = signInView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
