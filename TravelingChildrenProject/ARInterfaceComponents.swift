//
//  ARInterfaceComponents.swift
//  TravelingChildrenProject
//
//  Created by Alexander Rhett Crammer on 11/12/15.
//  Copyright © 2015 CDTDesign. All rights reserved.
//

import UIKit

class ARButton: UIButton {
    /* Properties */
    var idleColour: UIColor?
    let tapColour = UIColor.orange
    
    required init!(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Get the background color
        self.idleColour = self.backgroundColor
        
        // Round the button corners
        self.layer.cornerRadius = self.layer.frame.size.height * 0.5
        
        // Change the Border When Tapped
        addTarget(self, action: #selector(ARButton.drawActiveBorder), for: UIControlEvents.touchDown)
        addTarget(self, action: #selector(ARButton.drawInactiveBorder), for: UIControlEvents.touchUpInside)
        addTarget(self, action: #selector(ARButton.drawInactiveBorder), for: UIControlEvents.touchUpOutside)
    }
    
    func drawActiveBorder() {
        // Set the color for the active state
        self.backgroundColor = self.tapColour
    }
    
    func drawInactiveBorder() {
        UIView.animate(withDuration: 0.250, animations: {
            () -> Void in
            
            // Fade the active colour away
            self.backgroundColor = self.idleColour
        })
    }
}
