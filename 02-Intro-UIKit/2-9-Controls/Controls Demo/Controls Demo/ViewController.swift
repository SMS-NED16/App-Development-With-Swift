//
//  ViewController.swift
//  Controls Demo
//
//  Created by Saad Mashkoor Siddiqui on 10/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IB Outlets - references to IB UI elements that allows code to
    // access their properties and use them programmatically
    // Conventionally defined before viewDidLoad
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // The best place to connect a button to an action
        // is right after the view has loaded
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    // IB Actions - functions that are called in response to an event
    // Even though XCode shows that this IBAction is not connected to any IB Element
    // The function is linked to the button as a target through the addTarget method in viewDidLoad()
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        // Will access properties of other UI elements and print to console
        print("The switch is \(toggle.isOn ? "on!" : "off.")")
        print("The slider is set to \(slider.value).")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        // Print a message to the console every time the state changes
        print("The switch is \(sender.isOn ? "on!" : "off.")")
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // print the current value of the slider
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        // If the user entered some text before hitting return
        if let text = sender.text {
            print(text)     // print the text the user entered
        }
    }
    
    // A second IB Action for the textField - every time the textField's
    // text is updated, it is printed to the console
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    // Gesture Recognizer - when the user taps the screen
    // print the location of the tap to the console
    // location is (x, y) in the bounds rectangle of the
    // view controller's view
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

