//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Saad Mashkoor Siddiqui on 08/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Outlet that links reference to UIButton from main.storyboard in this ViewController.swift
    // Allows us to refer to and control the button programmatically
    @IBOutlet weak var myButton: UIButton!
    
    // Function that is after loading the view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        myButton.setTitleColor(.red, for: .normal)
        
        // programmatically adding a label subview
        let label = UILabel(frame: CGRect(x: 150, y: 300, width: 200, height: 44))
        label.text = "This label was added programmatically"
        label.numberOfLines = 2
        view.addSubview(label)
    }

    
    // This is an action - it is the function that will be executed when myButton is pressed
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("The button was pressed.")
    }
}

