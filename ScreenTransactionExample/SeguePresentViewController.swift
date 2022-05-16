//
//  SeguePresentViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButton(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    

}
