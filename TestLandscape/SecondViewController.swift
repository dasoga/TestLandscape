//
//  SecondViewController.swift
//  TestLandscape
//
//  Created by Dante Solorio on 8/7/18.
//  Copyright © 2018 Dasoga Apps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let appDel = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func closeView(){
        dismiss(animated: true, completion: nil)
    }
}
