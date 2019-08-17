//
//  ViewController.swift
//  App Event Count
//
//  Created by Saad Mashkoor Siddiqui on 17/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK:- Event Count IBOutlets
    @IBOutlet weak var didFinishLauchingLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    // MARK:- Event count instance properties
    var launchCount = 0
    var resignActiveCount = 0
    var didEnterBackgroundCount = 0
    var willEnterForegroundCount = 0
    var didBecomeActiveCount = 0
    var willTerminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }

    func updateView() {
        didFinishLauchingLabel.text = "\(launchCount)"
        willResignActiveLabel.text = "\(resignActiveCount)"
        didEnterBackgroundLabel.text = "\(didEnterBackgroundCount)"
        willEnterForegroundLabel.text = "\(willEnterForegroundCount)"
        didBecomeActiveLabel.text = "\(didBecomeActiveCount)"
        willTerminateLabel.text = "\(willTerminateCount)"
    }
}

