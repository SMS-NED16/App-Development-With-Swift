//
//  ViewController.swift
//  Light
//
//  Created by Saad Mashkoor Siddiqui on 08/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Global variable - accessible to all functions
    var lightOn = true  // true on startup
    
    // Reference to the light button that triggers bg change
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update the UI on startup - namely the labels and bg color
        updateUI()
    }

    // Function that will toggle view's background color
    @IBAction func buttonPressed(_ sender: Any) {
        // Toggle state variable
        lightOn = !lightOn   // new value = opposite of old value
        
        // Conditional logic to change bg-color
        updateUI()
    }
    
    // toggles the background color and button label
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}

