//
//  MiniPlayerViewController.swift
//  Spotty1
//
//  Created by Mike DiNicola on 5/17/17.
//  Copyright © 2017 dinico. All rights reserved.
//

import UIKit

class MiniPlayerViewController: UIViewController {

    @IBOutlet weak var playerHeight: NSLayoutConstraint!
    var showingPlayer = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animatePlayerVisibility(_ visible: Bool) {
        
        if visible == showingPlayer {
            return
        }
        showingPlayer = visible                
        
        self.playerHeight.constant = visible ? 56.0 : 0.0
        
        UIView.animate(withDuration: 0.35) {
            
            self.view.layoutIfNeeded()
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
