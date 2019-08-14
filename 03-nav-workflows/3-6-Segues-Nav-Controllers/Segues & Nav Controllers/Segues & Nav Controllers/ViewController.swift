//
//  ViewController.swift
//  Segues & Nav Controllers
//
//  Created by Saad Mashkoor Siddiqui on 14/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IB Outlets - References to IB Elements to allow programmatic manipulation of properties
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    
    // Segue function
    // This segue allows us to pass the text from the text field to the
    // destination of any transition from the red screen. The text of the
    // title in the destination will be set to that entered in the textField
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}

