//
//  ViewController1.swift
//  Spotty1
//
//  Created by Mike DiNicola on 5/17/17.
//  Copyright © 2017 dinico. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let nc = navigationController else {return}
        guard let miniPlayerPageController = nc.parent as? MiniPlayerPageController else {return}
        
        if !miniPlayerPageController.miniPlayerViewController.showingPlayer {
            
            miniPlayerPageController.miniPlayerViewController.animatePlayerVisibility(true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
