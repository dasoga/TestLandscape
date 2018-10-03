//
//  ThirdViewController.swift
//  TestLandscape
//
//  Created by Dante Solorio on 8/7/18.
//  Copyright © 2018 Dasoga Apps. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeView(){
        dismiss(animated: true, completion: nil)
    }
    

    // MARK: Show the view controller in iPhone just in landscape mode
    override var shouldAutorotate: Bool {
        if UIDevice.current.userInterfaceIdiom == .phone{
            return false
        }
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone{
            return .landscape
        }
        return .all
    }
    
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        if let lastController = presentingViewController{
            if UIDevice.current.userInterfaceIdiom != .phone{
                return lastController.preferredInterfaceOrientationForPresentation
            }
        }
        return .landscapeLeft
    }

}
