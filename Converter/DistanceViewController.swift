//
//  DistanceViewController.swift
//  Converter
//
//  Created by Admin on 8/12/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    // @IBOutlet weak var headerLab: UILabel!
    @IBOutlet weak var distanceNavBar: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.distanceNavBar.title = "Distance"
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
