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
    let colorsArr = ["red","blue","green","yellow"]
    let animalsArr = ["dog","cat","jaguar","pinguin","elephant"]
    
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return colorsArr.count
        case 1:
            return animalsArr.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "[colors]"
        case 1:
            return "[animals]"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableCell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
//        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            reusableCell.textLabel?.text = colorsArr[indexPath.row]
        case 1:
            reusableCell.textLabel?.text = animalsArr[indexPath.row]
        default:
            reusableCell.textLabel?.text = "something goes really wrong :)"
        }
        return reusableCell;
    }

    
}

