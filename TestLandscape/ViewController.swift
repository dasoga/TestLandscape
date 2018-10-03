//
//  ViewController.swift
//  TestLandscape
//
//  Created by Dante Solorio on 8/7/18.
//  Copyright © 2018 Dasoga Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var shouldAutorotate: Bool {
        if UIDevice.current.userInterfaceIdiom == .phone{
            return false
        }
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone{
            return .portrait
        }
        return .all
    }
    
    
//    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
//        if let lastController = presentingViewController{
//            if UIDevice.current.userInterfaceIdiom != .phone{
//                return lastController.preferredInterfaceOrientationForPresentation
//            }
//        }
//        return .landscapeLeft
//    }

}

