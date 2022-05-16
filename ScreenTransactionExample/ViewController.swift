//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by 채명정 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
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
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else{
            return
        }
        viewController.name = "mj"
        self.navigationController?.pushViewController(viewController, animated: true)
        
        
        
    }
    
    @IBAction func codePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else {return} // 각 타입에 맞는 뷰 컨트롤러로 다운 캐스팅 하게 되면 네임 프로퍼티에 접근할 수 있다. -> 그러면 다른 화면으로 푸시와 프레젠트 되기 전에 네임 프로퍼티에 값을 넘겨주면 전환된 화면으로 데이터를 넘겨줄 수 있다.
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "mj"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // prepare 메소드를 override 시켜주면 segueway를 실행하기 직전에 시스템에 의해서 override된 prepare method가 자동으로 호출되게 됨.
        if let viewController = segue.destination as? SeguePushViewController{
            viewController.name = "jack"
        } // 전환하려는 뷰 컨트롤러의 인스턴스
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit() // 텍스트에 맞게 라벨 사이즈 조정
    }
    
}

