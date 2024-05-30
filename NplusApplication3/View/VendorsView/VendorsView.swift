//
//  VendorsView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import UIKit

class VendorsView: UIView {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewTitle = UIView()
    
    var btnMenu = UIButton()
    
    var lblCompanyTitle = UILabel()
    
    var btnFavt = UIButton(type: .system)
    
    var tblViewVendors = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(Base baseView : UIView){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .none
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        
        viewTitle.translatesAutoresizingMaskIntoConstraints = false
        viewTitle.backgroundColor = .none
        layoutdict["viewTitle"] = viewTitle
        viewContent.addSubview(viewTitle)
        
        btnMenu.translatesAutoresizingMaskIntoConstraints = false
        let MenuImage = UIImage(named: "navigation")
        btnMenu.setImage(MenuImage, for: .normal)
        btnMenu.tintColor = .black
        layoutdict["btnMenu"] = btnMenu
        viewTitle.addSubview(btnMenu)
        
        lblCompanyTitle.translatesAutoresizingMaskIntoConstraints = false
        lblCompanyTitle.text = "SONAMA"
        lblCompanyTitle.textAlignment = .left
        lblCompanyTitle.textColor = UIColor(red: 208/255.0, green: 0/255.0, blue: 0/255.0, alpha: 2)
        lblCompanyTitle.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        layoutdict["lblCompanyTitle"] = lblCompanyTitle
        viewTitle.addSubview(lblCompanyTitle)
        
        btnFavt.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 13.0, *) {
            if let HeartImage = UIImage(systemName: "heart"){
                btnFavt.setImage(HeartImage, for: .normal)
                btnFavt.tintColor = UIColor(red: 208/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
                let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 24, weight: .bold)
                if let boldHeartImage = UIImage(systemName: "heart", withConfiguration: symbolConfiguration) {
                    btnFavt.setImage(boldHeartImage, for: .normal)
                }
            }
        } else {
            let HeartImage = UIImage(named: "heart")
            btnFavt.setImage(HeartImage, for: .normal)
        }
        layoutdict["btnFavt"] = btnFavt
        viewTitle.addSubview(btnFavt)
        
        tblViewVendors.translatesAutoresizingMaskIntoConstraints = false
        tblViewVendors.separatorStyle = .singleLine
        tblViewVendors.backgroundColor = .lightGray
        layoutdict["tblViewVendors"] = tblViewVendors
        viewContent.addSubview(tblViewVendors)
        
        
        baseView.backgroundColor = .white
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true

        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewTitle(60)]-10-[tblViewVendors]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewTitle]|", options: [], metrics: nil, views: layoutdict))
        
        viewTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnMenu]|", options: [], metrics: nil, views: layoutdict))
        viewTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCompanyTitle]|", options: [], metrics: nil, views: layoutdict))
        viewTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[btnFavt]-5-|", options: [], metrics: nil, views: layoutdict))
        viewTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnMenu(60)]-5-[lblCompanyTitle]-5-[btnFavt(60)]-10-|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[tblViewVendors]|", options: [], metrics: nil, views: layoutdict))
        
    }

}
