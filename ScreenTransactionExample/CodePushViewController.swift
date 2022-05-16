//
//  CodePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bavkButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
