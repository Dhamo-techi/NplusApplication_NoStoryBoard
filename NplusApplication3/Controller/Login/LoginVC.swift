//
//  LoginVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 27/05/24.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupviews()
        
        addtarget()
    }
    
    func setupviews(){
        
        loginView.setupview(base: self.view)
        
    }
    
    func addtarget(){
        loginView.btnCheckedbox.addTarget(self, action: #selector(checkboxTapped(_:)), for: .touchUpInside)
        
        loginView.btnFbContinue.addTarget(self, action: #selector(btnFbContinueTapped(_:)), for: .touchUpInside)
        
        loginView.btnTwitterContinue.addTarget(self, action: #selector(btnTwitterContinueTapped(_:)), for: .touchUpInside)
        
        loginView.btnLogin.addTarget(self, action: #selector(btnLoginTapped(_:)), for: .touchUpInside)

    }
    
    @objc func checkboxTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @objc func btnFbContinueTapped(_ sender: UIButton) {
        let vc = WebVC()
        if let url = URL(string: "https://www.facebook.com/login/"){
            vc.url = url
            navigationController?.present(vc, animated: true, completion: nil)
        }else{
            print("invalid Url")
        }
    }
    
    @objc func btnTwitterContinueTapped(_ sender: UIButton) {
        let vc = WebVC()
        if let url = URL(string: "https://x.com/i/flow/login"){
            vc.url = url
            navigationController?.present(vc, animated: true, completion: nil)
        }else{
            print("invalid Url")
        }
    }
    
    @objc func btnLoginTapped(_ sender: UIButton) {
        let vc = VendorsVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
