//
//  VendorTableViewCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import UIKit

class VendorTableViewCell: UITableViewCell {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var imageProduct = UIImageView()
    
    var lblProductTitle = UILabel()
    
    var lblProductBrand = UILabel()
    
    var lblProductUse = UILabel()
    
    var lblProductDescribtion = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupview(){
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .none
        layoutdict["viewContent"] = viewContent
        contentView.addSubview(viewContent)
        
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "background")
        imageProduct.contentMode = .scaleAspectFill
        imageProduct.layer.masksToBounds = true
        layoutdict["imageProduct"] = imageProduct
        viewContent.addSubview(imageProduct)
        
        lblProductTitle.translatesAutoresizingMaskIntoConstraints = false
        lblProductTitle.text = "Title"
        lblProductTitle.numberOfLines = 0
        lblProductTitle.textAlignment = .left
        lblProductTitle.textColor = .black
        lblProductTitle.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        layoutdict["lblProductTitle"] = lblProductTitle
        viewContent.addSubview(lblProductTitle)
        
        lblProductBrand.translatesAutoresizingMaskIntoConstraints = false
        lblProductBrand.text = "SubTitle"
        lblProductBrand.textAlignment = .left
        lblProductBrand.textColor = .gray
        lblProductBrand.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblProductBrand"] = lblProductBrand
        viewContent.addSubview(lblProductBrand)
        
        lblProductUse.translatesAutoresizingMaskIntoConstraints = false
        lblProductUse.text = "UseTitle"
        lblProductUse.textAlignment = .left
        lblProductUse.textColor = .gray
        lblProductUse.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblProductUse"] = lblProductUse
        viewContent.addSubview(lblProductUse)
        
        lblProductDescribtion.translatesAutoresizingMaskIntoConstraints = false
        lblProductDescribtion.text = "UseTitle dsvujsgbdvwbshjdvb buwbdvh sdbusbdev hhbv h edsvhbdvh hds b dvhbsdhbv hwbs vwhbdhv cwdubvh dsv ubdvh sdbv ubduv hnsd hwdguvjb nhsbvh wdnsnwbs bhdbvcj vhbwsev bsjkdvc sakjww bs dvchbqwhbecv"
        lblProductDescribtion.numberOfLines = 0
        lblProductDescribtion.textAlignment = .left
        lblProductDescribtion.textColor = .gray
        lblProductDescribtion.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblProductDescribtion"] = lblProductDescribtion
        viewContent.addSubview(lblProductDescribtion)
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[imageProduct(130)]", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[lblProductTitle]-10-[lblProductBrand(18)]-10-[lblProductUse(18)]-10-[lblProductDescribtion]-15-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(130)]-10-[lblProductTitle]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(130)]-10-[lblProductBrand]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(130)]-10-[lblProductUse]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(130)]-10-[lblProductDescribtion]|", options: [], metrics: nil, views: layoutdict))
        
    }

}
