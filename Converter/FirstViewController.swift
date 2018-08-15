//
//  FirstViewController.swift
//  Converter
//  Weight Controller
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var weight = WeigthConverter.shared
    @IBOutlet weak var weightNavBar: UINavigationItem!
    @IBOutlet weak var gramTxt: UITextField!
    @IBOutlet weak var kilogramTxt: UITextField!
    @IBOutlet weak var poundTxt: UITextField!
    @IBOutlet weak var ounceTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.weightNavBar.title = "Weight"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gramTxtChanged(_ sender: UITextField) {
        
    }
    
    func setTxtValues(){
        self.gramTxt.text = String(self.weight.getGramValue())
        self.kilogramTxt.text = String(self.weight.getKilogramValue())
        self.poundTxt.text = String(self.weight.getPoundValue())
        self.ounceTxt.text = String(self.weight.getOunceValue())
    }


}

