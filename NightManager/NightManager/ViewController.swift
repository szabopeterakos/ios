//
//  ViewController.swift
//  NightManager
//
//  Created by Szabó Péter on 2019. 10. 27..
//  Copyright © 2019. Szabó Péter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isDark = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = isDark ? UIColor.gray : UIColor.white
        isDark = !isDark
    }
    
}

