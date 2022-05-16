//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {

    // ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewController view did load ") // 이미 메모리에 로드 된경우는 다시 불러오진 않는다.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewController view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewController view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewController view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewController view did disappear")
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

