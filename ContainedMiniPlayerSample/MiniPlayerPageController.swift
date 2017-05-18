//
//  MiniPlayerPageController.swift
//  Spotty1
//
//  Created by Mike DiNicola on 5/17/17.
//  Copyright © 2017 dinico. All rights reserved.
//

import UIKit

class MiniPlayerPageController: UIViewController {

    weak var miniPlayerViewController: MiniPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for vc in childViewControllers {
            if let mpvc = vc as? MiniPlayerViewController {
                miniPlayerViewController = mpvc
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

