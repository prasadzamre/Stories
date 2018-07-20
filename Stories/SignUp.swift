//
//  SignUp.swift
//  Stories
//
//  Created by Prasad Zamre on 19/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUp: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var emialId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignUptapped(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emialId.text!, password: password.text!) { (user, error) in
            if error != nil{
                print("Error while signup")
            }
            else{
                print("Sign up in progress")
                
                
                Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
                    print("Error")
                })
                print("Everything sucessfull")
            }
        }
    }
    
}
