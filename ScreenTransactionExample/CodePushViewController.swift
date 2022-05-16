//
//  CodePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

        
    }
    
    @IBAction func bavkButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
