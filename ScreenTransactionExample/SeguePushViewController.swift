//
//  SeguePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class SeguePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    
    // ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        print("SeguePushViewControllerView did load") // 백버튼으로 이전 화면으로 돌아갈 경우 메모리에 있는 뷰 컨틀러가 삭제 되기 떄문에 처음부터 다시 로드한다

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("SeguePushViewControllerView will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("SeguePushViewControllerView did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("SeguePushViewControllerView will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("SeguePushViewControllerView did disappear")
    }
    
    
    
    
    @IBAction func backButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true) // 이전 화면으로 이동
        
//        self.navigationController?.popToRootViewController(animated: true) // 처음 화면으로 이동
    }
    
}
