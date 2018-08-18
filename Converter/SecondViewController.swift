//
//  SecondViewController.swift
//  Converter
//  Temperature Controller
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var temperature = TemperatureConverter.shared
    @IBOutlet weak var tempNavBar: UINavigationItem!
    @IBOutlet weak var celsiusTxt: UITextField!
    @IBOutlet weak var fahrenheitTxt: UITextField!
    @IBOutlet weak var kelvinTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearTextBoxes()
        self.tempNavBar.title = "Temperature"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func celsiusTxtChanged(_ sender: UITextField) {
        if let celsius = Double(self.celsiusTxt.text!){
            self.setValues("celsius", celsius)
        }else{
            if(self.celsiusTxt.text != ""){
                self.alertShow()
            }else{
                self.temperature.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func fahrenheitTxtChanged(_ sender: UITextField) {
        if let fahrenheit = Double(self.fahrenheitTxt.text!){
            self.setValues("fahrenheit", fahrenheit)
        }else{
            if(self.fahrenheitTxt.text != ""){
                self.alertShow()
            }else{
                self.temperature.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func kelvinTxtChanged(_ sender: UITextField) {
        if let kelvin = Double(self.kelvinTxt.text!){
            self.setValues("kelvin", kelvin)
        }else{
            if(self.kelvinTxt.text != ""){
                self.alertShow()
            }else{
                self.temperature.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    func setValues(_ txt: String, _ val: Double){
        switch txt {
        case "celsius":
            self.temperature.setCelsiusValue(val)
            self.fahrenheitTxt.text = String(self.temperature.getFahrenheitValue())
            self.kelvinTxt.text = String(self.temperature.getKelvinValue())
        case "fahrenheit":
            self.temperature.setFahrenheitValue(val)
            self.celsiusTxt.text = String(self.temperature.getCelsiusValue())
            self.kelvinTxt.text = String(self.temperature.getKelvinValue())
        case "kelvin":
            self.temperature.setKelvinValue(val)
            self.celsiusTxt.text = String(self.temperature.getCelsiusValue())
            self.fahrenheitTxt.text = String(self.temperature.getFahrenheitValue())
        default:
            self.celsiusTxt.text = String(self.temperature.getCelsiusValue())
            self.fahrenheitTxt.text = String(self.temperature.getFahrenheitValue())
            self.kelvinTxt.text = String(self.temperature.getKelvinValue())
        }
    }
    
    func clearTextBoxes(){
        self.celsiusTxt.text = ""
        self.fahrenheitTxt.text = ""
        self.kelvinTxt.text = ""
    }
    
    func alertShow(){
        let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
            self.temperature.resetValues()
            self.clearTextBoxes()
        }
        alert.addAction(okBtn)
        present(alert, animated: true, completion: nil)
    }
}

