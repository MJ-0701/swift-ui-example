//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func codePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else{
            return
        }
        self.navigationController?.pushViewController(viewController, animated: true)
        
        
        
    }
    
    @IBAction func codePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else {return}
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
        
        
    }
    
}

