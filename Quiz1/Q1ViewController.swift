//
//  Q1ViewController.swift
//  Quiz1
//
//  Created by Michael Simon on 2/19/16.
//  Copyright (c) 2016 Michael Simon. All rights reserved.
//

import UIKit

class Q1ViewController: UIViewController {

    @IBOutlet weak var q1Answer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "segueNext") {
            let vcQ2 = segue.destinationViewController as! Q2ViewController;
            if (q1Answer.text == "21") {
                vcQ2.q1Correct  = true;
            } else {
                vcQ2.q1Correct = false;
            }
        }
    }


}
