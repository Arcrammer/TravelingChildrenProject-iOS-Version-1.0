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
        
        // Set the corner radius of the sign-in button
        self.signinButton.setCornerRadius(25.0)
    }
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}
