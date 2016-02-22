//
//  Q2ViewController.swift
//  Quiz1
//
//  Created by Michael Simon on 2/19/16.
//  Copyright (c) 2016 Michael Simon. All rights reserved.
//

import UIKit

class Q2ViewController: UIViewController {

    var q1Correct: Bool?
    
    @IBOutlet weak var q2Answer: UITextField!
    
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
        
        let vcSummary = segue.destinationViewController as! SummaryViewController;
        
        vcSummary.q1Correct = self.q1Correct;
        
        if (q2Answer.text == "chicago blackhawks") {
            vcSummary.q2Correct = true;
        } else {
            vcSummary.q2Correct = false;
        }
        
    }


}
