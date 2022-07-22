//
//  ViewController.swift
//  TrashSample
//
//  Created by sjyong on 2022/07/22.
//

import UIKit
import YSJCustomFramework

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let logResult = LoggerInterface.addLog(log: "First log with YSJCustomFramework")
        
        if logResult {
            titleLabel.text = "SUCCESS"
        } else {
            titleLabel.text = "FAIL"
        }
    }

}

