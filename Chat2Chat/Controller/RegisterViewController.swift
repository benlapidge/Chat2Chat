//
//  RegisterViewController.swift
//  Chat2Chat
//
//  Created by Ben Lapidge on 08/12/2022.
//
import FirebaseAuth
import UIKit

class RegisterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
   

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
                
            }
        }
        
        
    }
}
