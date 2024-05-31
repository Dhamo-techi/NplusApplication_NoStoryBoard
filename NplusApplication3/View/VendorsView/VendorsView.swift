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
    
    var viewCart = UIView()
    
    var imageProduct = UIImageView()
    
    var lblProductTitle = UILabel()
    
    var lblProductBrand = UILabel()
    
    var btnViewCart = UIButton()
    
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
        
        viewCart.translatesAutoresizingMaskIntoConstraints = false
        viewCart.isHidden = true
        viewCart.backgroundColor = .white
        viewCart.layer.cornerRadius = 30
        viewCart.layer.shadowColor = UIColor.black.cgColor
        viewCart.layer.shadowOpacity = 1.5
        viewCart.layer.shadowOffset = CGSize(width: 5, height: 5)
        viewCart.layer.shadowRadius = 10
        viewCart.layer.borderWidth = 2.0
        viewCart.layer.borderColor = UIColor.gray.cgColor
        viewCart.layer.masksToBounds = true
        layoutdict["viewCart"] = viewCart
        viewContent.addSubview(viewCart)
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "1")
        imageProduct.contentMode = .scaleAspectFill
        imageProduct.layer.cornerRadius = 12
        imageProduct.layer.masksToBounds = true
        layoutdict["imageProduct"] = imageProduct
        viewCart.addSubview(imageProduct)
        
        lblProductTitle.translatesAutoresizingMaskIntoConstraints = false
        lblProductTitle.text = "Title"
        lblProductTitle.numberOfLines = 0
        lblProductTitle.textAlignment = .left
        lblProductTitle.textColor = .black
        lblProductTitle.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        layoutdict["lblProductTitle"] = lblProductTitle
        viewCart.addSubview(lblProductTitle)
        
        lblProductBrand.translatesAutoresizingMaskIntoConstraints = false
        lblProductBrand.text = "SubTitle"
        lblProductBrand.textAlignment = .left
        lblProductBrand.textColor = .gray
        lblProductBrand.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        layoutdict["lblProductBrand"] = lblProductBrand
        viewCart.addSubview(lblProductBrand)
        
        btnViewCart.translatesAutoresizingMaskIntoConstraints = false
        btnViewCart.setTitle("View Cart->", for: .normal)
        btnViewCart.setTitleColor(UIColor(red: 208/255.0, green: 0/255.0, blue: 0/255.0, alpha: 2), for: .normal)
        btnViewCart.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        layoutdict["btnViewCart"] = btnViewCart
        viewCart.addSubview(btnViewCart)
        
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
        
        viewCart.bottomAnchor.constraint(equalTo: viewContent.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        viewCart.heightAnchor.constraint(equalToConstant: 60).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[viewCart]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewCart.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[imageProduct]-5-|", options: [], metrics: nil, views: layoutdict))
        viewCart.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[lblProductTitle(30)][lblProductBrand]-3-|", options: [], metrics: nil, views: layoutdict))
        viewCart.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnViewCart]|", options: [], metrics: nil, views: layoutdict))
        viewCart.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(50)]-20-[lblProductTitle]-5-[btnViewCart(130)]-5-|", options: [], metrics: nil, views: layoutdict))
        //        viewCart.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblProductTitle(100)]", options: [], metrics: nil, views: layoutdict))
        viewCart.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(50)]-20-[lblProductBrand]-5-[btnViewCart(130)]-5-|", options: [], metrics: nil, views: layoutdict))
    }
    
}
