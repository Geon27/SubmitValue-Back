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
    @IBAction func onSubmit(_ sender: Any) {

    // UserDefault 객체의 인스턴스를 가져온다
        let ud = UserDefaults.standard
        
    
    // 값을 저장한다
    ud.set(self.email.text, forKey: "email")
    ud.set(self.isUpdate.isOn, forKey: "isUpdate")
    ud.set(self.interval.value, forKey: "interval")
    
        // 이전 화면으로 복귀한다
        self.presentingViewController?.dismiss(animated: true)
    }
}
