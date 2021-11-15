//
//  MainViewController.swift
//  ios-login
//
//  Created by 허지인 on 2021/11/15.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // pop 제스처를 막음
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // navigationBar 숨기기
        navigationController?.navigationBar.isHidden = true
    
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomeLabel.text = """
        환영합니다.
        \(email)님
        """
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton){
        self.navigationController?.popToRootViewController(animated: true)
    }
}
