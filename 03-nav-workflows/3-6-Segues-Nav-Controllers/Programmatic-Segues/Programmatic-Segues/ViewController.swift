//
//  ViewController.swift
//  Programmatic-Segues
//
//  Created by Saad Mashkoor Siddiqui on 14/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK:- IB OUTLETS
    @IBOutlet var segueSwitch: UISwitch!
    
    // MARK:- VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK:- IB ACTIONS
    @IBAction func yellowButtonPressed(_ sender: Any) {
        // Performing a segue programmatically
        // Sender set to `nil` because it isn't needed in this example
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonPressed(_ sender: Any) {
        // Performing segue programmatically only if switch is on
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

