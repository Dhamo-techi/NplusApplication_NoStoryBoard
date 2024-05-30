//
//  webView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import UIKit
import WebKit

class webView: UIView {
    
    var layoutdict = [String : Any]()
        
    var webview  = WKWebView()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(Base baseview : UIView){

        webview.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["webview"] = webview
        baseview.addSubview(webview)
 
        
        baseview.backgroundColor = .red
        baseview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[webview]|", options: [], metrics: nil, views: layoutdict))
        baseview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[webview]|", options: [], metrics: nil, views: layoutdict))
//        webview.topAnchor.constraint(equalTo: baseview.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
//        webview.bottomAnchor.constraint(equalTo: baseview.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true

    }
    
    func load(url: URL) {
        let request = URLRequest(url: url)
        webview.load(request)
    }
}
