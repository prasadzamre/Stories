//
//  profile.swift
//  Stories
//
//  Created by Prasad Zamre on 20/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import UIKit

class profile: UIViewController {

    @IBOutlet weak var imageCircle: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageCircle.layer.cornerRadius = imageCircle.frame.size.width / 2
        imageCircle.clipsToBounds = true
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
