//
//  ViewController.swift
//  Hello
//
//  Created by Alex Yang on 3/20/17.
//  Copyright © 2017 Alex Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textBox.text = "init"
    }
    
    func transferVal() {
        if switchButton.isOn {
            textBox.text = "\(slider.value)"
        }
    }

    @IBAction func theValueChanged(_ sender: UISlider) {
        transferVal()
    }
    
    @IBAction func switchButtonFlipped(_ sender: UISwitch) {
        transferVal()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

