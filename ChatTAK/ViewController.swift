//
//  ViewController.swift
//  ChatTAK
//
//  Created by Mobark Alseif on 03/05/1443 AH.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func SignIn(email: String,password:String) {
      
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in

            if let error = error {
                print(error.localizedDescription)
            }
            if authResult?.user.email != nil {
                
            }
            print("email:\(String(describing: authResult?.user.email))")
            print("uid:\(String(describing: authResult?.user.uid))")
            self?.performSegue(withIdentifier: "Home", sender: nil)
          // ...
        }
        
    }
    func SignUp(email: String,password:String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            print("email:\(String(describing: authResult?.user.email))")
            print("uid:\(String(describing: authResult?.user.uid))")
            
            
          // ...
        }
        
    }
    @IBAction func signButton(_ sender: UIButton) {
        
        SignUp(email: email.text ?? "", password: password.text ?? "")
        
    }
    @IBAction func singIn(_ sender: UIButton) {
        
        
        SignIn(email: email.text ?? "", password: password.text ?? "")
        
        
        
        
    }
    
    
}

