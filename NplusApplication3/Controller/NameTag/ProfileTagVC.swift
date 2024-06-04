//
//  ProfileTagVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 04/06/24.
//

import UIKit

class ProfileTagVC: UIViewController {

    var profileTagView = ProfileTagView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupViews()
        
        addTarget()
    }
    

    func setupViews(){
        profileTagView.setupView(base: view)
    }
    
    func addTarget(){
        
    }

}
