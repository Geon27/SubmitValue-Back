//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by 육건 on 2023/01/05.
//

import UIKit
class FormViewController: UIViewController {
    @IBOutlet var email: UITextField! // 이메일
    @IBOutlet var isUpdate: UISwitch! // 자동갱신 여부
    @IBOutlet var interval: UIStepper! // 갱신주기
    
    //submit 버튼을 클릭했을때 호출되는 메소드
    @IBAction func onSubmit(_ sender: AnyObject) {
        // persentingViewController 속성을 통하여 이전화면 객체를 읽어온 후, ViewController 타입으로 캐스팅.
        let perVC = self.presentingViewController
        guard let vc = perVC as? ViewController else {
            return
        }
        
        // 값 전달
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        
        // 이전 화면으로 복귀
        self.presentingViewController?.dismiss(animated: true)
    }
}
