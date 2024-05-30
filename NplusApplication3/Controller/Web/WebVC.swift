//
//  WebVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import UIKit
import WebKit

class WebVC: UIViewController {
    
    var webview = webView()
    
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        
        setuview()
        
        addTarget()
        
    }
    
    func setuview(){
        
        webview.setupViews(Base: self.view)
        if let url = url {
            webview.load(url: url)
        }
        
    }
    
    func addTarget() {
        
    }
    
}
