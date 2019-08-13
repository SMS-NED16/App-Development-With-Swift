//
//  ViewController.swift
//  Two Buttons
//
//  Created by Saad Mashkoor Siddiqui on 11/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IB Outlets - References to UI Elements that allows us to manipualte them in code
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setText(_ sender: UIButton) {
        textLabel.text = textField.text
    }
    
    @IBAction func clearText(_ sender: UIButton) {
        textLabel.text = ""
        textField.text = ""
    }
}

