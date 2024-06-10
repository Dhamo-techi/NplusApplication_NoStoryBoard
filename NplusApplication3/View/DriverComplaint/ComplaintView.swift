//
//  ComplaintView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 10/06/24.
//

import UIKit

class ComplaintView: UIView {
    
    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    
    var btnBack = UIButton()
    
    var lblViewTitle = UILabel()
    
    var btnNotify = UIButton()
    
    var tblVwComplaints = UITableView()
    
    var pageScroller = UIPageControl()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(base baseView: UIView){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .white
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        baseView.backgroundColor = .white
        
        viewBack_title.translatesAutoresizingMaskIntoConstraints = false
        viewBack_title.backgroundColor = .none
        layoutdict["viewBack_title"] = viewBack_title
        viewContent.addSubview(viewBack_title)
        
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        let backImage = UIImage(named: "backArrowImage")
        btnBack.setImage(backImage, for: .normal)
        btnBack.backgroundColor = .none
        layoutdict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
        
        lblViewTitle.translatesAutoresizingMaskIntoConstraints = false
        lblViewTitle.text = "N² 45568"
        lblViewTitle.textAlignment = .center
        lblViewTitle.textColor = .black
        lblViewTitle.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        layoutdict["lblViewTitle"] = lblViewTitle
        viewBack_title.addSubview(lblViewTitle)
        
        btnNotify.translatesAutoresizingMaskIntoConstraints = false
        btnNotify.setTitle("Cancel", for: .normal)
        btnNotify.setTitleColor(.black, for: .normal)
        btnNotify.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        btnNotify.backgroundColor = .none
        btnNotify.tintColor = .black
        btnNotify.layer.cornerRadius = 12
        layoutdict["btnNotify"] = btnNotify
        viewBack_title.addSubview(btnNotify)
        
        tblVwComplaints.translatesAutoresizingMaskIntoConstraints = false
        tblVwComplaints.separatorStyle = .none
        tblVwComplaints.backgroundColor = .none
        layoutdict["tblVwComplaints"] = tblVwComplaints
        viewContent.addSubview(tblVwComplaints)
        
        pageScroller.translatesAutoresizingMaskIntoConstraints = false
        pageScroller.numberOfPages = 3
        pageScroller.currentPage = 0
        pageScroller.pageIndicatorTintColor = .lightGray
        pageScroller.currentPageIndicatorTintColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
        pageScroller.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        layoutdict["pageScroller"] = pageScroller
        viewContent.addSubview(pageScroller)
        
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(50)][tblVwComplaints]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutdict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[btnBack]-5-|", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblViewTitle]|", options: [], metrics: nil, views: layoutdict))
        lblViewTitle.centerXAnchor.constraint(equalTo: viewBack_title.centerXAnchor, constant: 0).isActive = true
        
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnNotify]|", options: [], metrics: nil, views: layoutdict))
        
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnBack(40)]", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[btnNotify(70)]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[tblVwComplaints]|", options: [], metrics: nil, views: layoutdict))
        
        
        pageScroller.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: 0).isActive = true
        pageScroller.heightAnchor.constraint(equalToConstant: 60).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[pageScroller]-10-|", options: [], metrics: nil, views: layoutdict))
        
        pageScroller.bringSubviewToFront(tblVwComplaints)
    }
}
