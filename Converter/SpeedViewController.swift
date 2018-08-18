//
//  SpeedViewController.swift
//  Converter
//
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    var speed = SpeedConverter.shared
    @IBOutlet weak var speedNavBar: UINavigationItem!
    @IBOutlet weak var mpsTxt: UITextField!
    @IBOutlet weak var fpmTxt: UITextField!
    @IBOutlet weak var kphTxt: UITextField!
    @IBOutlet weak var mphTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearTextBoxes()
        self.speedNavBar.title = "Speed"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mpsTxtChanged(_ sender: UITextField) {
        if let mps = Double(self.mpsTxt.text!){
            self.setValues("mps", mps)
        }else{
            if(self.mpsTxt.text != ""){
                self.alertShow()
            }else{
                self.speed.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func fpmTxtChanged(_ sender: UITextField) {
        if let fpm = Double(self.fpmTxt.text!){
            self.setValues("fpm", fpm)
        }else{
            if(self.fpmTxt.text != ""){
                self.alertShow()
            }else{
                self.speed.resetValues()
                self.clearTextBoxes()
            }
        }
    }
 
    @IBAction func kphTxtChanged(_ sender: UITextField) {
        if let kph = Double(self.kphTxt.text!){
            self.setValues("kph", kph)
        }else{
            if(self.kphTxt.text != ""){
                self.alertShow()
            }else{
                self.speed.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    @IBAction func mphTxtChanged(_ sender: UITextField) {
        if let mph = Double(self.mphTxt.text!){
            self.setValues("mph", mph)
        }else{
            if(self.mphTxt.text != ""){
                self.alertShow()
            }else{
                self.speed.resetValues()
                self.clearTextBoxes()
            }
        }
    }
    
    func setValues(_ txt: String, _ val: Double){
        switch txt {
        case "mps":
            speed.setMPSValue(val)
            self.fpmTxt.text = String(self.speed.getFPMValue())
            self.kphTxt.text = String(self.speed.getKPHValue())
            self.mphTxt.text = String(self.speed.getMPHValue())
        case "fpm":
            speed.setFPMValue(val)
            self.mpsTxt.text = String(self.speed.getMPSValue())
            self.kphTxt.text = String(self.speed.getKPHValue())
            self.mphTxt.text = String(self.speed.getMPHValue())
        case "kph":
            speed.setKPHValue(val)
            self.mpsTxt.text = String(self.speed.getMPSValue())
            self.fpmTxt.text = String(self.speed.getFPMValue())
            self.mphTxt.text = String(self.speed.getMPHValue())
        case "mph":
            speed.setMPHValue(val)
            self.mpsTxt.text = String(self.speed.getMPSValue())
            self.fpmTxt.text = String(self.speed.getFPMValue())
            self.kphTxt.text = String(self.speed.getKPHValue())
        default:
            self.mpsTxt.text = String(self.speed.getMPSValue())
            self.fpmTxt.text = String(self.speed.getFPMValue())
            self.kphTxt.text = String(self.speed.getKPHValue())
            self.mphTxt.text = String(self.speed.getMPHValue())
        }
        
    }
    
    func clearTextBoxes(){
        self.mpsTxt.text = ""
        self.fpmTxt.text = ""
        self.kphTxt.text = ""
        self.mphTxt.text = ""
    }
    
    func alertShow(){
        let alert = UIAlertController(title: "Alert", message: "Incorrect input !", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: " Ok ", style: .default){ (action) in
            self.speed.resetValues()
            self.clearTextBoxes()
        }
        alert.addAction(okBtn)
        present(alert, animated: true, completion: nil)
    }
    
}
