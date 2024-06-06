//
//  AllDefibrillatorsTableViewCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 05/06/24.
//

import UIKit

class AllDefibrillatorsTableViewCell: UITableViewCell {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var imageProduct = UIImageView()
    
    var lblTitle = UILabel()
    
    var lblLocation = UILabel()
    
    var lblConfirmation = UILabel()
    
    var viewKM = UIView()

    var lblKM = UILabel()
    
    var lblFromWhere = UILabel()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .clear
        setupview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupview(){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .white
        layoutdict["viewContent"] = viewContent
        contentView.addSubview(viewContent)
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "1")
        imageProduct.contentMode = .scaleAspectFill
        imageProduct.layer.cornerRadius = 30
        imageProduct.layer.masksToBounds = true
        layoutdict["imageProduct"] = imageProduct
        viewContent.addSubview(imageProduct)
        
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.text = "N 2022"
        lblTitle.numberOfLines = 0
        lblTitle.textAlignment = .left
        lblTitle.textColor = .black
        lblTitle.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        layoutdict["lblTitle"] = lblTitle
        viewContent.addSubview(lblTitle)
        
        lblLocation.translatesAutoresizingMaskIntoConstraints = false
        lblLocation.text = "Kumeliy 17-7,kaunas LT-41127"
        lblLocation.textAlignment = .left
        lblLocation.textColor = .black
        lblLocation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblLocation"] = lblLocation
        viewContent.addSubview(lblLocation)

        viewKM.translatesAutoresizingMaskIntoConstraints = false
        viewKM.backgroundColor = .white
        layoutdict["viewKM"] = viewKM
        viewContent.addSubview(viewKM)
        
        lblKM.translatesAutoresizingMaskIntoConstraints = false
        lblKM.text = "22 km."
        lblKM.textAlignment = .left
        lblKM.numberOfLines = 0
        lblKM.textColor = .black
        lblKM.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutdict["lblKM"] = lblKM
        viewKM.addSubview(lblKM)
        
        lblFromWhere.translatesAutoresizingMaskIntoConstraints = false
        lblFromWhere.text = "from you"
        lblFromWhere.textAlignment = .left
        lblFromWhere.numberOfLines = 0
        lblFromWhere.textColor = .black
        lblFromWhere.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblFromWhere"] = lblFromWhere
        viewKM.addSubview(lblFromWhere)
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imageProduct(60)]", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[lblTitle]-10-[lblLocation(16)]-10-|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[viewKM]-15-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[imageProduct(60)]-10-[lblTitle][viewKM(80)]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[imageProduct(60)]-10-[lblLocation][viewKM(80)]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewKM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblKM][lblFromWhere]|", options: [], metrics: nil, views: layoutdict))
        viewKM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblFromWhere]|", options: [], metrics: nil, views: layoutdict))
        viewKM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblKM]|", options: [], metrics: nil, views: layoutdict))

    }

}
