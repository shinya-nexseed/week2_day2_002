//
//  ViewController.swift
//  week2_day2_002
//
//  Created by Shinya Hirai on 2015/10/13.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // カウント用の変数
    var myCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        println(myCount)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "mySegue") {
            myCount++
            var sVC = segue.destinationViewController as! SecondViewController
            sVC.tmpCount = myCount
        }
        
    }
    
    @IBAction func returnMenu(segue: UIStoryboardSegue) {
        let sVC = segue.sourceViewController as! SecondViewController
        myCount = sVC.tmpCount;
        
        myCount++
        
        println(myCount)
    }

}

