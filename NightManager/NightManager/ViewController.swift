//
//  ViewController.swift
//  NightManager
//
//  Created by Szabó Péter on 2019. 10. 27..
//  Copyright © 2019. Szabó Péter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var isDark = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = isDark ? UIColor.darkGray : UIColor.white
        
        let subviews: [UIView] = view.subviews
        for aview in subviews {
            if aview is UILabel {
                let cLabel = aview as! UILabel
                cLabel.textColor = isDark ? UIColor.lightGray : UIColor.black
            }
        }
        isDark = !isDark
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "This is the \(indexPath.row) row"
        return cell;
    }

    
}

