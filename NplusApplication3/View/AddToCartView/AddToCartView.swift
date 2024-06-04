//
//  AddToCartView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 29/05/24.
//

import UIKit

class AddToCartView: UIView {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var btnBack = UIButton()
    
    var imgvwProduct = UIImageView()
    
    var viewProductContent = UIView()
    
    var viewProductRating = UIView()
    
    var imgvwRatingStar = UIImageView()
    
    var lblRating = UILabel()
    
    var viewProductDetails = UIView()
    
    var lblProductName = UILabel()
    
    var lblProductBrand = UILabel()
    
    var viewProductPrice = UIView()
    
    var lblPrice = UILabel()
    
    var viewAddorMinusProduct = UIView()
    
    var btnAdd = UIButton()
    
    var btnMinus = UIButton()
    
    var lblCount = UILabel()

    var lblDsbt = UILabel()
    
    var lblProductDescription = UILabel()
    
    var btnAddToCart = UIButton()

    var lblProductStock = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(Base baseView : UIView){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .lightGray
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        let backImage = UIImage(named: "backImage")
        btnBack.setImage(backImage, for: .normal)
        btnBack.backgroundColor = .white
        btnBack.tintColor = .black
        btnBack.layer.cornerRadius = 12
        layoutdict["btnBack"] = btnBack
        viewContent.addSubview(btnBack)
        
        imgvwProduct.translatesAutoresizingMaskIntoConstraints = false
        imgvwProduct.image = UIImage(named: "1")
        imgvwProduct.contentMode = .scaleAspectFit
        imgvwProduct.layer.masksToBounds = true
        layoutdict["imgvwProduct"] = imgvwProduct
        viewContent.addSubview(imgvwProduct)

        viewProductContent.translatesAutoresizingMaskIntoConstraints = false
        viewProductContent.backgroundColor = .white
        viewProductContent.layer.cornerRadius = 45
        viewProductContent.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        layoutdict["viewProductContent"] = viewProductContent
        viewContent.addSubview(viewProductContent)
        
        viewProductRating.translatesAutoresizingMaskIntoConstraints = false
        viewProductRating.backgroundColor = .white
        viewProductRating.layer.shadowColor = UIColor.black.cgColor
        viewProductRating.layer.shadowOpacity = 0.5
        viewProductRating.layer.shadowOffset = CGSize(width: 5, height: 5)
        viewProductRating.layer.shadowRadius = 10
        viewProductRating.layer.cornerRadius = 30
        layoutdict["viewProductRating"] = viewProductRating
        viewProductContent.addSubview(viewProductRating)
        
        imgvwRatingStar.translatesAutoresizingMaskIntoConstraints = false
        imgvwRatingStar.image = UIImage(named: "star")
        imgvwRatingStar.contentMode = .scaleAspectFill
        imgvwRatingStar.layer.masksToBounds = true
        layoutdict["imgvwRatingStar"] = imgvwRatingStar
        viewProductRating.addSubview(imgvwRatingStar)
        
        lblRating.translatesAutoresizingMaskIntoConstraints = false
        lblRating.text = "2000"
        lblRating.textAlignment = .center
        lblRating.textColor = .black
        lblRating.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        layoutdict["lblRating"] = lblRating
        viewProductRating.addSubview(lblRating)
        
        viewProductDetails.translatesAutoresizingMaskIntoConstraints = false
        viewProductDetails.backgroundColor = .white
        layoutdict["viewProductDetails"] = viewProductDetails
        viewProductContent.addSubview(viewProductDetails)
        
        lblProductName.translatesAutoresizingMaskIntoConstraints = false
        lblProductName.text = "Product Title"
        lblProductName.numberOfLines = 0
        lblProductName.textAlignment = .left
        lblProductName.textColor = .black
        lblProductName.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        layoutdict["lblProductName"] = lblProductName
        viewProductDetails.addSubview(lblProductName)
        
        lblProductBrand.translatesAutoresizingMaskIntoConstraints = false
        lblProductBrand.text = "Product Brand"
        lblProductBrand.numberOfLines = 0
        lblProductBrand.textAlignment = .left
        lblProductBrand.textColor = .black
        lblProductBrand.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        layoutdict["lblProductBrand"] = lblProductBrand
        viewProductDetails.addSubview(lblProductBrand)
        
        viewProductPrice.translatesAutoresizingMaskIntoConstraints = false
        viewProductPrice.backgroundColor = .white
        layoutdict["viewProductPrice"] = viewProductPrice
        viewProductDetails.addSubview(viewProductPrice)
        
        lblPrice.translatesAutoresizingMaskIntoConstraints = false
        lblPrice.text = "Rs.20000"
        lblPrice.textAlignment = .center
        lblPrice.textColor = .black
//        lblPrice.backgroundColor = .black
        lblPrice.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        layoutdict["lblPrice"] = lblPrice
        viewProductPrice.addSubview(lblPrice)
        
        viewAddorMinusProduct.translatesAutoresizingMaskIntoConstraints = false
        viewAddorMinusProduct.backgroundColor = .black
        layoutdict["viewAddorMinusProduct"] = viewAddorMinusProduct
        viewProductPrice.addSubview(viewAddorMinusProduct)
        
        btnAdd.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: 23, weight: .bold)
        let addImage = UIImage(systemName: "plus", withConfiguration: config)
        //(named: "plus")
        btnAdd.setImage(addImage, for: .normal)
        btnAdd.backgroundColor = UIColor(red: 208/255.0, green: 0/255.0, blue: 0/255.0, alpha: 2)
        btnAdd.tintColor = .white
        layoutdict["btnAdd"] = btnAdd
        viewAddorMinusProduct.addSubview(btnAdd)
        
        lblCount.translatesAutoresizingMaskIntoConstraints = false
        lblCount.text = "10"
        lblCount.textAlignment = .center
        lblCount.textColor = .black
        lblCount.backgroundColor = .lightGray
        lblCount.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        layoutdict["lblCount"] = lblCount
        viewAddorMinusProduct.addSubview(lblCount)
        
        btnMinus.translatesAutoresizingMaskIntoConstraints = false
        let minusImage = UIImage(systemName: "minus", withConfiguration: config)
            //UIImage(named: "minus")
        btnMinus.setImage(minusImage, for: .normal)
        btnMinus.tintColor = .white
        btnMinus.backgroundColor = .gray
        btnMinus.tintColor = .black
        layoutdict["btnMinus"] = btnMinus
        viewAddorMinusProduct.addSubview(btnMinus)
        
        lblDsbt.translatesAutoresizingMaskIntoConstraints = false
        lblDsbt.text = "Description:"
        lblDsbt.textAlignment = .left
        lblDsbt.textColor = .black
        lblDsbt.backgroundColor = .white
        lblDsbt.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        layoutdict["lblDsbt"] = lblDsbt
        viewProductDetails.addSubview(lblDsbt)
        
        lblProductDescription.translatesAutoresizingMaskIntoConstraints = false
        lblProductDescription.text = "Descriptionbv s;dvojwdvknwds kjjksniv ;awivniELW:Aibvhjdn vaeul ndhjs hefludb hehbu ibeudb hwd: dknearsigbevj ebehjubv hjef njebhrbv jnejhrbv hejrn vehrbhv bdenehbrhv ejbnvu jbejv bhde her"
        lblProductDescription.textAlignment = .left
        lblProductDescription.textColor = .black
        lblProductDescription.numberOfLines = 0
        lblProductDescription.backgroundColor = .white
        lblProductDescription.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        layoutdict["lblProductDescription"] = lblProductDescription
        viewProductDetails.addSubview(lblProductDescription)
        
        lblProductStock.translatesAutoresizingMaskIntoConstraints = false
        lblProductStock.text = "only 5 left"
        lblProductStock.textAlignment = .center
        lblProductStock.textColor = UIColor(red: 208/255.0, green: 0/255.0, blue: 0/255.0, alpha: 2)
        lblProductStock.backgroundColor = .white
        lblProductStock.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        layoutdict["lblProductStock"] = lblProductStock
        viewProductDetails.addSubview(lblProductStock)
        
        btnAddToCart.translatesAutoresizingMaskIntoConstraints = false
        btnAddToCart.backgroundColor = UIColor(red: 208/255.0, green: 0/255.0, blue: 0/255.0, alpha: 2)
        btnAddToCart.layer.cornerRadius = 30
        btnAddToCart.setTitle("Add To Cart", for: .normal)
        btnAddToCart.setTitleColor(.white, for: .normal)
        btnAddToCart.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        layoutdict["btnAddToCart"] = btnAddToCart
        viewProductDetails.addSubview(btnAddToCart)
        
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgvwProduct(290)]-(-50)-[viewProductContent]|", options: [], metrics: nil, views: layoutdict))

        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imgvwProduct]|", options: [], metrics: nil, views: layoutdict))
        
        btnBack.topAnchor.constraint(equalTo: viewContent.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        btnBack.heightAnchor.constraint(equalToConstant: 50).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[btnBack(50)]", options: [], metrics: nil, views: layoutdict))

        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewProductContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(-30)-[viewProductRating(60)]-10-[viewProductDetails]|", options: [], metrics: nil, views: layoutdict))
        viewProductRating.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewProductRating.centerXAnchor.constraint(equalTo: viewProductContent.centerXAnchor, constant: 0).isActive = true

        imgvwRatingStar.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imgvwRatingStar.centerYAnchor.constraint(equalTo: viewProductRating.centerYAnchor, constant: 0).isActive = true
        lblRating.centerYAnchor.constraint(equalTo: viewProductRating.centerYAnchor, constant: 0).isActive = true
        viewProductRating.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblRating]|", options: [], metrics: nil, views: layoutdict))
        viewProductRating.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imgvwRatingStar(40)][lblRating]-10-|", options: [], metrics: nil, views: layoutdict))
        

        viewProductContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewProductDetails]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[lblProductName]-30-[lblProductBrand]-30-[viewProductPrice(60)]-20-[lblDsbt]-10-[lblProductDescription]", options: [], metrics: nil, views: layoutdict))
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblProductName]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblProductBrand]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewProductPrice]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductPrice.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblPrice]|", options: [], metrics: nil, views: layoutdict))
        viewProductPrice.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblPrice][viewAddorMinusProduct(180)]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewProductPrice.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewAddorMinusProduct]|", options: [], metrics: nil, views: layoutdict))
//        viewProductPrice.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[viewAddorMinusProduct(180)]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewAddorMinusProduct.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnAdd]|", options: [], metrics: nil, views: layoutdict))
        
        viewAddorMinusProduct.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCount]|", options: [], metrics: nil, views: layoutdict))
        
        viewAddorMinusProduct.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnMinus]|", options: [], metrics: nil, views: layoutdict))
        
        viewAddorMinusProduct.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnMinus(60)][lblCount][btnAdd(60)]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblDsbt]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblProductDescription]|", options: [], metrics: nil, views: layoutdict))
        
        btnAddToCart.bottomAnchor.constraint(equalTo: viewProductDetails.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        btnAddToCart.heightAnchor.constraint(equalToConstant: 60).isActive = true
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[btnAddToCart]-20-|", options: [], metrics: nil, views: layoutdict))
        
        lblProductStock.bottomAnchor.constraint(equalTo: btnAddToCart.topAnchor, constant: -30).isActive = true
        lblProductStock.heightAnchor.constraint(equalToConstant: 30).isActive = true
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblProductStock]-20-|", options: [], metrics: nil, views: layoutdict))
    }
        
}
