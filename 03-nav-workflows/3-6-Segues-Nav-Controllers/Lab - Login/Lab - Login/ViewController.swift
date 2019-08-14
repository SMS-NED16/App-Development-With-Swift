//
//  ViewController.swift
//  Lab - Login
//
//  Created by Saad Mashkoor Siddiqui on 14/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK:- IB OUTLETS
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK:- SEGUES
    // Will prepare the destination for the segue based on sender
    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // First attempt to unwrap the sender as UIButton
        guard let sender = sender as? UIButton else { return }
        
        // Will update title based on the segue that was initiated
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender === forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            let userName = usernameTextField.text
            
            if userName != "" {
                segue.destination.navigationItem.title = "Welcome \(usernameTextField.text!)!"
            } else {
                segue.destination.navigationItem.title = "Welcome!"
            }
        }
    }
    
    // Initiates landingPageSegue with forgotUserNameButton as a sender
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "landingPageSegue", sender: forgotUserNameButton)
    }
    
    // Initiates landingPageSegue with forgotPassword as sender
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "landingPageSegue", sender: forgotPasswordButton)
    }
}

