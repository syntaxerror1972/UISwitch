//
//  ViewController.swift
//  UISwitch
//
//  Created by Shrawan Shinde on 21/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var switchStatus = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        switchStatus.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        view.addSubview(switchStatus)
        switchStatus.text = "UISwitch is ON"
        
        var switchView=UISwitch(frame:CGRect(x: 150, y: 300, width: 0, height: 0));
        switchView.isOn = true
        switchView.setOn(true, animated: false);
        switchView.addTarget(self, action: #selector(switchIsChanged), for: UIControlEvents.valueChanged)
        self.view.addSubview(switchView);
    }
    
    func switchIsChanged(mySwitch: UISwitch) {
        if mySwitch.isOn {
            switchStatus.text = "UISwitch is ON"
        } else {
            switchStatus.text = "UISwitch is OFF"
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

