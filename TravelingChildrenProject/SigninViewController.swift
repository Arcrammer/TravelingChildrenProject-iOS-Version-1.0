//
//  SigninViewController.swift
//  TravelingChildrenProject
//
//  Created by Alexander Rhett Crammer on 11/20/15.
//  Copyright © 2015 CDTDesign. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {
    /* Properties */
    @IBOutlet weak var signinButton: ARButton!
    
    /* Methods */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
