//
//  MainViewController.swift
//  ios-login
//
//  Created by 허지인 on 2021/11/15.
//

import UIKit
import FirebaseAuth

class MainViewCotnroller: UIViewController {
    
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
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            self.navigationController?.popToRootViewController(animated: true)
            
        }catch let signOutError as NSError {
            print("Error: Signout \(signOutError.localizedDescription)")
        }
      
    }
}
