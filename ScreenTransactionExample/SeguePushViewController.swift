//
//  SeguePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true) // 이전 화면으로 이동
        
//        self.navigationController?.popToRootViewController(animated: true) // 처음 화면으로 이동
    }
    
}
