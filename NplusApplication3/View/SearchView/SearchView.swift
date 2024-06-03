//
//  SearchView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 31/05/24.
//

import UIKit

class SearchView: UIView {
    
    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    
    var btnBack = UIButton()
    
    var lblViewTitle = UILabel()
    
    var btnSearch = UIButton()
    
    var btnNotify = UIButton()
    
    var viewSearchContent = UIView()
    
    var txtfldSearch = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .none
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        baseView.backgroundColor = .white
        
        viewBack_title.translatesAutoresizingMaskIntoConstraints = false
        viewBack_title.backgroundColor = .none
        layoutdict["viewBack_title"] = viewBack_title
        viewContent.addSubview(viewBack_title)
        
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        let backImage = UIImage(named: "backImage")
        btnBack.setImage(backImage, for: .normal)
        btnBack.backgroundColor = .none
        btnBack.tintColor = .black
        btnBack.layer.cornerRadius = 12
        btnBack.layer.borderWidth = 2
        btnBack.layer.borderColor = UIColor.lightGray.cgColor
        layoutdict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
        
        lblViewTitle.translatesAutoresizingMaskIntoConstraints = false
        lblViewTitle.text = "Search"
        lblViewTitle.textAlignment = .left
        lblViewTitle.textColor = .black
        lblViewTitle.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        layoutdict["lblViewTitle"] = lblViewTitle
        viewBack_title.addSubview(lblViewTitle)
        
        btnSearch.translatesAutoresizingMaskIntoConstraints = false
        let searchImage = UIImage(named: "search")
        btnSearch.setImage(searchImage, for: .normal)
        btnSearch.backgroundColor = .none
        btnSearch.tintColor = .black
        btnSearch.layer.cornerRadius = 12
        layoutdict["btnSearch"] = btnSearch
        viewBack_title.addSubview(btnSearch)
        
        btnNotify.translatesAutoresizingMaskIntoConstraints = false
        let notifyImage = UIImage(named: "notify")
        btnNotify.setImage(notifyImage, for: .normal)
        btnNotify.backgroundColor = .none
        btnNotify.tintColor = .black
        btnNotify.layer.cornerRadius = 12
        layoutdict["btnNotify"] = btnNotify
        viewBack_title.addSubview(btnNotify)
        
        viewSearchContent.translatesAutoresizingMaskIntoConstraints = false
        viewSearchContent.backgroundColor = .none
        layoutdict["viewSearchContent"] = viewSearchContent
        viewContent.addSubview(viewSearchContent)
        
        txtfldSearch.translatesAutoresizingMaskIntoConstraints = false
        txtfldSearch.placeholder = "Search"
        let Emailpaddingview = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 53))
        txtfldSearch.leftView = Emailpaddingview
        txtfldSearch.leftViewMode = .always
        txtfldSearch.layer.cornerRadius = 13
        txtfldSearch.backgroundColor = UIColor(red: 212/255.0, green: 212/255.0, blue: 212/255.0, alpha: 2)
        txtfldSearch.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        layoutdict["txtfldSearch"] = txtfldSearch
        viewSearchContent.addSubview(txtfldSearch)
        
        
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(50)][viewSearchContent]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutdict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnBack]|", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblViewTitle]|", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnSearch]|", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnNotify]|", options: [], metrics: nil, views: layoutdict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[btnBack(50)]-20-[lblViewTitle]-10-[btnSearch(50)]-5-[btnNotify(50)]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewSearchContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewSearchContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-25-[txtfldSearch(60)]", options: [], metrics: nil, views: layoutdict))
        viewSearchContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[txtfldSearch]-20-|", options: [], metrics: nil, views: layoutdict))
    }
    
}
