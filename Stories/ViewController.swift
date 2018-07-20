//
//  ViewController.swift
//  Stories
//
//  Created by Prasad Zamre on 19/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (data, error) in
            if error != nil {
                print("Error in signIn")
            }
            
            else{
                print("Sigin Sucessfully")
                
                self.performSegue(withIdentifier: "gotoProfile", sender: self)
            }
            
        }
        
        
    }
    
    


}

