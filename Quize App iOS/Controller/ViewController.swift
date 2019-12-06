//
//  ViewController.swift
//  Quize App iOS
//
//  Created by Md Sifat on 12/5/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit
import  Foundation

class ViewController: UIViewController {
    
    let questionBank = QuestionBank()
    var timer = Timer()
    var counter = 0
    var time = 31
    
    @IBOutlet weak var QuesShowLbl: UILabel!
    @IBOutlet weak var QuesNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            // UTF-8 Hexadecimal Encoding
        timer.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GetTimer), userInfo: self, repeats: true)
    
    }
    
    @objc func GetTimer(){
        counter += 1;
        if counter < questionBank.data.count{
            QuesShowLbl.text = questionBank.data[counter].symbol
            QuesNameLbl.text = questionBank.data[counter].name
        }
    
    }

    @IBAction func RightBtn(_ sender: UIButton) {
    }
    
}

