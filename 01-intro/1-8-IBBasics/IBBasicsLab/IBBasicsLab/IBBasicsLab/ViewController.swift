//
//  ViewController.swift
//  IBBasicsLab
//
//  Created by Saad Mashkoor Siddiqui on 08/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Outlets - references to UI Elements in main.storyboard
    @IBOutlet weak var mainLabel: UILabel!
    
    // Actions - callback functions that define how the user interacts with a given UI Element
    // In this case, the function defines what happens when the user pressed the button - it changes the label text
    @IBAction func changeTitle(_ sender: UIButton) {
        mainLabel.text = "This app rocks!"
    }
    
    
}

