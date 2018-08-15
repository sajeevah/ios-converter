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
        if let grams = Double(self.gramTxt.text!){
            self.setValues("gram", grams)
        }else{
            if(self.gramTxt.text != ""){
                let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
                    self.weight.resetValues()
                    self.clearTextBoxes()
                }
                alert.addAction(okBtn)
                present(alert, animated: true, completion: nil)
            }else{
                self.weight.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func kilogramTxtChanged(_ sender: UITextField) {
        if let kilogram = Double(self.kilogramTxt.text!){
            self.setValues("kilogram", kilogram)
        }else{
            if(self.kilogramTxt.text != ""){
                let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
                    self.weight.resetValues()
                    self.clearTextBoxes()
                }
                alert.addAction(okBtn)
                present(alert, animated: true, completion: nil)
            }else{
                self.weight.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func poundTxtChanged(_ sender: UITextField) {
        if let pound = Double(self.poundTxt.text!){
            self.setValues("pound", pound)
        }else{
            if(self.poundTxt.text != ""){
                let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
                    self.weight.resetValues()
                    self.clearTextBoxes()
                }
                alert.addAction(okBtn)
                present(alert, animated: true, completion: nil)
            }else{
                self.weight.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func ounceTxtChanged(_ sender: UITextField) {
        if let ounce = Double(self.ounceTxt.text!){
            self.setValues("ounce", ounce)
        }else{
            if(self.ounceTxt.text != ""){
                let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
                    self.weight.resetValues()
                    self.clearTextBoxes()
                }
                alert.addAction(okBtn)
                present(alert, animated: true, completion: nil)
            }else{
                self.weight.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    func setValues(_ txt: String, _ val: Double){
        switch txt {
        case "gram":
            weight.setGramValue(val)
            self.kilogramTxt.text = String(self.weight.getKilogramValue())
            self.poundTxt.text = String(self.weight.getPoundValue())
            self.ounceTxt.text = String(self.weight.getOunceValue())
        case "kilogram":
            weight.setKilogramValue(val)
            self.gramTxt.text = String(self.weight.getGramValue())
            self.poundTxt.text = String(self.weight.getPoundValue())
            self.ounceTxt.text = String(self.weight.getOunceValue())
        case "pound":
            weight.setPoundValue(val)
            self.gramTxt.text = String(self.weight.getGramValue())
            self.kilogramTxt.text = String(self.weight.getKilogramValue())
            self.ounceTxt.text = String(self.weight.getOunceValue())
        case "ounce":
            weight.setOunceValue(val)
            self.gramTxt.text = String(self.weight.getGramValue())
            self.kilogramTxt.text = String(self.weight.getKilogramValue())
            self.poundTxt.text = String(self.weight.getPoundValue())
        default:
            self.gramTxt.text = String(self.weight.getGramValue())
            self.kilogramTxt.text = String(self.weight.getKilogramValue())
            self.poundTxt.text = String(self.weight.getPoundValue())
            self.ounceTxt.text = String(self.weight.getOunceValue())
        }
        
    }
    
    func clearTextBoxes(){
        self.gramTxt.text = ""
        self.kilogramTxt.text = ""
        self.poundTxt.text = ""
        self.ounceTxt.text = ""
    }


}

