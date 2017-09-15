//
//  ViewController.swift
//  Delegate
//
//  Created by Nikhil Tanappagol on 9/4/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ViewController: UIViewController , DataDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var labelView: UILabel!
    
    func userDidEnterInfo(info: NSString) {
        labelView.text = info as String
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowVC" {
            let secondVC : ViewController2 = segue.destination as! ViewController2
            secondVC.delegate = self
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

