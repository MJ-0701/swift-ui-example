//
//  CodePresentViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

protocol SendDataDelegate : AnyObject{
    func sendData(name : String )
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    weak var delegate : SendDataDelegate? // delegate 패턴을 사용할떄 delegate 변수앞에 weak라는 변수를 붙여 줘야함. 안붙일 경우 강한 순환 참조가 걸려서 메모리 누수가 발생함.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit() // 짤릴경우 안짤리게 하는 함수
        }

    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "mj")
        self.presentingViewController?.dismiss(animated: true , completion: nil)
    }
    
}
