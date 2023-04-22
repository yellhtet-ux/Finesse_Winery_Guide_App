//
//  SignUpViewController.swift
//  Finesse Winery
//
//  Created by Timmy Cole on 4/20/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseAnalytics

class SignUpViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                }else {
                    self.performSegue(withIdentifier: K.signinIdentifier , sender: nil)
                }
            }
        }
    }
    
}
