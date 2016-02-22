//
//  SummaryViewController.swift
//  Quiz1
//
//  Created by Michael Simon on 2/19/16.
//  Copyright (c) 2016 Michael Simon. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    var q2Correct: Bool?
    var q1Correct: Bool?
    
    @IBOutlet weak var CorrectAnswers: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if (q1Correct! && q2Correct! == true) {
            CorrectAnswers.text = "2";
        } else if (q1Correct! == true && q2Correct! == false) {
            CorrectAnswers.text = "1";
        } else if (q1Correct! == false && q2Correct! == true) {
            CorrectAnswers.text = "1";
        } else {
            CorrectAnswers.text = "0";
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
