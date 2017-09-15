//
//  ViewController2.swift
//  Delegate
//
//  Created by Nikhil Tanappagol on 9/4/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

protocol DataDelegate {
    func userDidEnterInfo (info :NSString)
}

class ViewController2: UIViewController {

    
    var delegate : DataDelegate? =  nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var textField: UITextField!
    
    @IBAction func sendData(_ sender: Any) {
        if (delegate != nil){
            let information : NSString = textField.text as! NSString
            delegate!.userDidEnterInfo(info: information)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
