//
//  SearchVc.swift
//  NplusApplication3
//
//  Created by MAC PRO on 31/05/24.
//

import UIKit

class SearchVc: UIViewController {

    var searchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        setupview()
        
        addtarget()
    }
    
    func setupview(){
        
        searchView.setupView(base: view)
    }
    
    func addtarget(){
        
    }

}
