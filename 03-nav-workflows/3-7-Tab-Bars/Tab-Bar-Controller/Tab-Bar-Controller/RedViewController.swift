//
//  ViewController.swift
//  Tab-Bar-Controller
//
//  Created by Saad Mashkoor Siddiqui on 14/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Red view controller loaded.")
        
        // Programmatically modifying badge value for notification
        tabBarItem.badgeValue = "!"
    }
}

