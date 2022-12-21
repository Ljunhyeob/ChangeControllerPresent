//
//  ViewController.swift
//  ChangePersent
//
//  Created by 이준협 on 2022/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func nextBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SecondController") else {return}
        //nextVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        //꽉찬 화면으로 이동
        
        //nextVC.modalPresentationStyle = UIModalPresentationStyle.currentContext
        //fullScreen과 다를게 없어보이지만, 차이점은 무조건 디바이스 화면에 꽉차에 표시되는 fullScreen과 달리 현재 viewController의 크기에 맞춰서 불러진다. (지금 view가 작다면 currentContext 로 설정해서 부른 화면도 작게 불린다는 의미.)
        
        //nextVC.modalPresentationStyle = UIModalPresentationStyle.overFullScreen
        //nextVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        //위에서 설명한 것과 같지만 하나 다른점은 alpha 값을 줄 수 있다는 점입니다. alpah 값은 투명도를 변경할 수 있습니다. (기존 화면도 뒤에 보이기 원할때 사용합니다.)
        
        self.present(nextVC ,animated: true)
    }
}

