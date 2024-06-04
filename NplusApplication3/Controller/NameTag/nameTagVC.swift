//
//  nameTagVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 04/06/24.
//

import UIKit

class nameTagVC: UIViewController {

    var nametagView = nameTagView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addTarget()
    }
    
    func setupViews(){
        nametagView.setupView(base: view)
    }
    
    func addTarget(){
        
    }
    


}
