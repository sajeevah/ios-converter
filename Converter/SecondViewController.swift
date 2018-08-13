//
//  SecondViewController.swift
//  Converter
//  Temperature Controller
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tempNavBar: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tempNavBar.title = "Temperature"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

