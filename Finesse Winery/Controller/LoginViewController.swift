//
//  LoginViewController.swift
//  Finesse Winery
//
//  Created by Timmy Cole on 4/20/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseAnalytics

class LoginViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text , let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
              guard let _ = self else { return }
                if let e = error {
                    print(e.localizedDescription)
                }else {
                    self?.performSegue(withIdentifier: K.loginIdentifier, sender: nil)
                }
            }
        }
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.signinIdentifier, sender: nil)
    }
}
