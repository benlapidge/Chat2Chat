//
//  ChatViewController.swift
//  Chat2Chat
//
//  Created by Ben Lapidge on 08/12/2022.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    


    @IBAction func logoutPressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    do {
        try Auth.auth().signOut()
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
    }
    
}
