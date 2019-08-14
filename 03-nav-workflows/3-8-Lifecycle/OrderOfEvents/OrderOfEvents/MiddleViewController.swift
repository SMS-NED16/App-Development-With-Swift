//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Saad Mashkoor Siddiqui on 14/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    // MARK:- IB Outlets
    @IBOutlet var lifecycleLabel: UILabel!
    
    // MARK:- INSTANCE PROPERTIES
    var eventNumber: Int = 1
    
    // MARK:- LIFECYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLifecycleLabel(methodName: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLifecycleLabel(methodName: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateLifecycleLabel(methodName: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        updateLifecycleLabel(methodName: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        updateLifecycleLabel(methodName: "viewDidDisappear")
    }
    
    
    // Unwrap label text, append a new event to it, increment event count
    func updateLifecycleLabel(methodName: String) {
        if let existingText = lifecycleLabel.text {
            lifecycleLabel.text = "\(existingText)\nEvent Number \(eventNumber) was \(methodName)."
        }
        // increment the events logged so far
        eventNumber += 1
    }
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
