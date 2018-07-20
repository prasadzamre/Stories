//
//  SignOut.swift
//  Stories
//
//  Created by Prasad Zamre on 19/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import UIKit
import Firebase

class SignOut: UIViewController {

    @IBOutlet weak var emaiId: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Reset(_ sender: Any) {
        
        if password.text! == confirmPassword.text!
        {
            Auth.auth().currentUser?.updatePassword(to: confirmPassword.text!, completion: { (error) in
                print("Error while changing password")
            })
            
            
            print("Password Changed")
            Auth.auth().sendPasswordReset(withEmail: emaiId.text!, completion: { (error) in
                print("error while sending email")
            })
        }
        else{
            print("Reenter password !! password havent match yet")
        }
        
    }
    
   

}
