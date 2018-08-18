//
//  DistanceViewController.swift
//  Converter
//
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    var distance = DistanceConverter.shared
    @IBOutlet weak var distanceNavBar: UINavigationItem!
    @IBOutlet weak var metreTxt: UITextField!
    @IBOutlet weak var footTxt: UITextField!
    @IBOutlet weak var yardTxt: UITextField!
    @IBOutlet weak var kilometreTxt: UITextField!
    @IBOutlet weak var mileTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearTextBoxes()
        self.distanceNavBar.title = "Distance"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func metreTxtChanged(_ sender: UITextField) {
        if let metre = Double(self.metreTxt.text!){
            self.setValues("metre", metre)
        }else{
            if(self.metreTxt.text != ""){
                self.alertShow()
            }else{
                self.distance.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func footTxtChanged(_ sender: UITextField) {
        if let foot = Double(self.footTxt.text!){
            self.setValues("foot", foot)
        }else{
            if(self.footTxt.text != ""){
                self.alertShow()
            }else{
                self.distance.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func yardTxtChanged(_ sender: UITextField) {
        if let yard = Double(self.yardTxt.text!){
            self.setValues("yard", yard)
        }else{
            if(self.yardTxt.text != ""){
                self.alertShow()
            }else{
                self.distance.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func kilometreTxtChanged(_ sender: UITextField) {
        if let kilometre = Double(self.kilometreTxt.text!){
            self.setValues("kilometre", kilometre)
        }else{
            if(self.kilometreTxt.text != ""){
                self.alertShow()
            }else{
                self.distance.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func mileTxtChanged(_ sender: UITextField) {
        if let mile = Double(self.mileTxt.text!){
            self.setValues("mile", mile)
        }else{
            if(self.mileTxt.text != ""){
                self.alertShow()
            }else{
                self.distance.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    func setValues(_ txt: String, _ val: Double){
        switch txt {
        case "metre":
            distance.setMetreValue(val)
            self.footTxt.text = String(self.distance.getFootValue())
            self.yardTxt.text = String(self.distance.getYardValue())
            self.kilometreTxt.text = String(self.distance.getKilometreValue())
            self.mileTxt.text = String(self.distance.getMileValue())
        case "foot":
            distance.setFootValue(val)
            self.metreTxt.text = String(self.distance.getMetreValue())
            self.yardTxt.text = String(self.distance.getYardValue())
            self.kilometreTxt.text = String(self.distance.getKilometreValue())
            self.mileTxt.text = String(self.distance.getMileValue())
        case "yard":
            distance.setYardValue(val)
            self.metreTxt.text = String(self.distance.getMetreValue())
            self.footTxt.text = String(self.distance.getFootValue())
            self.kilometreTxt.text = String(self.distance.getKilometreValue())
            self.mileTxt.text = String(self.distance.getMileValue())
        case "kilometre":
            distance.setKilometreValue(val)
            self.metreTxt.text = String(self.distance.getMetreValue())
            self.footTxt.text = String(self.distance.getFootValue())
            self.yardTxt.text = String(self.distance.getYardValue())
            self.mileTxt.text = String(self.distance.getMileValue())
        case "mile":
            distance.setMileValue(val)
            self.metreTxt.text = String(self.distance.getMetreValue())
            self.footTxt.text = String(self.distance.getFootValue())
            self.yardTxt.text = String(self.distance.getYardValue())
            self.kilometreTxt.text = String(self.distance.getKilometreValue())
        default:
            self.metreTxt.text = String(self.distance.getMetreValue())
            self.footTxt.text = String(self.distance.getFootValue())
            self.yardTxt.text = String(self.distance.getYardValue())
            self.kilometreTxt.text = String(self.distance.getKilometreValue())
            self.mileTxt.text = String(self.distance.getMileValue())
        }
    }
    
    func clearTextBoxes(){
        self.metreTxt.text = ""
        self.footTxt.text = ""
        self.yardTxt.text = ""
        self.kilometreTxt.text = ""
        self.mileTxt.text = ""
    }
    
    func alertShow(){
        let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
            self.distance.resetValues()
            self.clearTextBoxes()
        }
        alert.addAction(okBtn)
        present(alert, animated: true, completion: nil)
    }

}
