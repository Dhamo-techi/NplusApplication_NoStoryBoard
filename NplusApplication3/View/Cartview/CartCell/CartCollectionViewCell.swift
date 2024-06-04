//
//  CartCollectionViewCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 30/05/24.
//

import UIKit

class CartCollectionViewCell: UICollectionViewCell {
     
    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var imageviewProduct = UIImageView()
    
    var viewProductDetails = UIView()
    
    var lblProductTitle = UILabel()

    var lblProductBrand = UILabel()
    
    var viewPriceDetails = UIView()

    var lblPrice = UILabel()
    
    var viewAddPrd = UIView()

    var btnAdd = UIButton()
    
    var btnPlus = UIButton()
    
    var lblProductCount = UILabel()
    
    var btnMinus = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 30.0
        layer.masksToBounds = true
        
        setupView()
    }
    
    func setupView(){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .white
        layoutdict["viewContent"] = viewContent
        contentView.addSubview(viewContent)
        
        imageviewProduct.translatesAutoresizingMaskIntoConstraints = false
        imageviewProduct.image = UIImage(named: "1")
        imageviewProduct.contentMode = .scaleAspectFill
        imageviewProduct.layer.cornerRadius = 30.0
        imageviewProduct.layer.masksToBounds = true
        layoutdict["imageviewProduct"] = imageviewProduct
        viewContent.addSubview(imageviewProduct)
        
        viewProductDetails.translatesAutoresizingMaskIntoConstraints = false
        viewProductDetails.backgroundColor = .white
        layoutdict["viewProductDetails"] = viewProductDetails
        viewContent.addSubview(viewProductDetails)
        
        lblProductTitle.translatesAutoresizingMaskIntoConstraints = false
        lblProductTitle.text = "Product Title Product Title Product Title Product Title"
        lblProductTitle.numberOfLines = 2
        lblProductTitle.textAlignment = .left
        lblProductTitle.textColor = .black
        lblProductTitle.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        layoutdict["lblProductTitle"] = lblProductTitle
        viewProductDetails.addSubview(lblProductTitle)
        
        lblProductBrand.translatesAutoresizingMaskIntoConstraints = false
        lblProductBrand.text = "SubTitle"
        lblProductBrand.textAlignment = .left
        lblProductBrand.textColor = .gray
        lblProductBrand.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutdict["lblProductBrand"] = lblProductBrand
        viewProductDetails.addSubview(lblProductBrand)
        
        viewPriceDetails.translatesAutoresizingMaskIntoConstraints = false
        viewPriceDetails.backgroundColor = .none
        layoutdict["viewPriceDetails"] = viewPriceDetails
        viewProductDetails.addSubview(viewPriceDetails)
        
        lblPrice.translatesAutoresizingMaskIntoConstraints = false
        lblPrice.text = "$.10.00"
        lblPrice.numberOfLines = 1
        lblPrice.textAlignment = .left
        lblPrice.textColor = .black
        lblPrice.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        layoutdict["lblPrice"] = lblPrice
        viewPriceDetails.addSubview(lblPrice)
        
        viewAddPrd.translatesAutoresizingMaskIntoConstraints = false
        viewAddPrd.backgroundColor = .orange
        viewAddPrd.layer.cornerRadius = 30 / 2
        viewAddPrd.layer.masksToBounds = true
        layoutdict["viewAddPrd"] = viewAddPrd
        viewPriceDetails.addSubview(viewAddPrd)
        
        btnAdd.translatesAutoresizingMaskIntoConstraints = false
        let AddImage = UIImage(named: "plus1")
        btnAdd.setImage(AddImage, for: .normal)
        btnAdd.backgroundColor = .none
        layoutdict["btnAdd"] = btnAdd
        viewAddPrd.addSubview(btnAdd)
        
        lblProductCount.translatesAutoresizingMaskIntoConstraints = false
        lblProductCount.text = "10"
        lblProductCount.textAlignment = .center
        lblProductCount.textColor = .white
        lblProductCount.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        layoutdict["lblProductCount"] = lblProductCount
        viewAddPrd.addSubview(lblProductCount)
        
        btnMinus.translatesAutoresizingMaskIntoConstraints = false
        let minusImage = UIImage(named: "minus1")
        btnMinus.setImage(minusImage, for: .normal)
        btnMinus.backgroundColor = .none
        layoutdict["btnMinus"] = btnMinus
        viewAddPrd.addSubview(btnMinus)
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imageviewProduct]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewProductDetails]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[imageviewProduct(170)][viewProductDetails]|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[lblProductTitle(70)]-5-[lblProductBrand(30)]-5-[viewPriceDetails]-5-|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblProductTitle]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblProductBrand]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewProductDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewPriceDetails]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewPriceDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblPrice]|", options: [], metrics: nil, views: layoutdict))
        
        viewAddPrd.centerYAnchor.constraint(equalTo: viewPriceDetails.centerYAnchor, constant: 0).isActive = true
        viewAddPrd.heightAnchor.constraint(equalToConstant: 30).isActive = true
        viewPriceDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblPrice][viewAddPrd(100)]|", options: [], metrics: nil, views: layoutdict))
        
        viewAddPrd.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnAdd]|", options: [], metrics: nil, views: layoutdict))
        viewAddPrd.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblProductCount]|", options: [], metrics: nil, views: layoutdict))
        viewAddPrd.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnMinus]|", options: [], metrics: nil, views: layoutdict))
        viewAddPrd.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnMinus(40)][lblProductCount][btnAdd(40)]|", options: [], metrics: nil, views: layoutdict))
    
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with product: CartProduct) {
        lblProductTitle.text = product.name
        lblProductBrand.text = product.brand
        lblPrice.text = "$.\(product.price ?? 0)"
        lblProductCount.text = "\(product.count ?? 0)"
        let imgurl = URL(string: product.imgURL ?? "")
        URLSession.shared.dataTask(with: imgurl!){ mydata, myres, myerr in
            if let err = myerr{
                print(err.localizedDescription)
            }
            if let data = mydata{
                let imgdata = UIImage(data: data)
                DispatchQueue.main.async {
                    self.imageviewProduct.image = imgdata
                }
            }
        }.resume()
    }
}
