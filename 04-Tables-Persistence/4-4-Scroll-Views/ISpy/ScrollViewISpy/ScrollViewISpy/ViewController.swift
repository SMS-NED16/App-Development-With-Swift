//
//  ViewController.swift
//  ScrollViewISpy
//
//  Created by Saad Mashkoor Siddiqui on 28/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

// To use a scroll view for zooming the view controller needs to conform to the UIScrollViewDelegate protocol
class ViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setting this viewController as UIScrollViewDelegate
        scrollView.delegate = view as? UIScrollViewDelegate
        
        // Every time the view loads, update the image view's scale
        updateZoomFor(size: view.bounds.size)
    }
    
    // MARK:- IB Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgView: UIImageView!
    
    // MARK:- PROTOCOL METHODS
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgView
    }
    
    func updateZoomFor(size: CGSize) {
        // Calculates the scale necessary to show the entire width and height of the image
        // Then sets the scale of the scroll view to be the smaller of the two
        // So that the entire image fits on the screen
        let widthScale = size.width / imgView.bounds.width
        let heightScale = size.height / imgView.bounds.height
        let scale = min(widthScale, heightScale)
        
        scrollView.minimumZoomScale = scale
    }
}

