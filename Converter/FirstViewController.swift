//
//  FirstViewController.swift
//  Converter
//  Weight Controller
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var weightNavBar: UINavigationItem!
    @IBOutlet weak var gramTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.weightNavBar.title = "Weight"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

