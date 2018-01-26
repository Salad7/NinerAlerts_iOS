//
//  BroadcastViewController.swift
//  NinerAlerts
//
//  Created by cci-loaner on 1/26/18.
//  Copyright © 2018 cci-loaner. All rights reserved.
//

import UIKit

class BroadcastViewController: UIViewController {
    @IBAction func send(_ sender: UIButton) {
    }
    @IBOutlet weak var details: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBAction func cancel(_ sender: UIBarButtonItem) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
