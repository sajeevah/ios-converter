//
//  SpeedViewController.swift
//  Converter
//
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var speedNavBar: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.speedNavBar.title = "Speed"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
