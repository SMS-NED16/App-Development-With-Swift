//
//  ViewController.swift
//  View Controller Life Cycle
//
//  Created by Saad Mashkoor Siddiqui on 14/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController - view did load.")
    }

    // MARK :- View event notification functions
    // Overridden custom implementations of functions that will be called
    // every time the state of a view in the ViewController changes
    
    // viewWilAppear - anything that will happen every time a view is about
    // to appear (and the view appears multiple times)
    override func viewWillAppear(_ animated: Bool) {
        // Superclass' implementation of the method
        super.viewWillAppear(animated)
        
        // Any custom code will be added after superclass code is done
        print("ViewController - viewWillAppear's overridden version called.")
    }
    
    // viewDidAppear - after the view has appeared on screen - requires > seconds
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)       // again call the superclass' version
        
        print("ViewController - View Did Appear.")
    }
    
    // viewWillDisappear - navigating away from screen, switching tabs, presenting or dismissing a modal
    // use for saving edits, hiding keyboard, cancelling network requests
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController - View Will Disappear.")
    }
    
    // viewDidDisappear - after view has disappeared from screen
    // stop playing audio, remove notification observers
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController - View Did Disappear.")
    }

}

