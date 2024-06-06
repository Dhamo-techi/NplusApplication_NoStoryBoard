//
//  DefibrillatorsTableViewCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 05/06/24.
//

import UIKit

class DefibrillatorsTableViewCell: UITableViewCell {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var imageProduct = UIImageView()
    
    var lblTitle = UILabel()
    
    var lblLocation = UILabel()
    
    var lblConfirmation = UILabel()
    
    var viewDot = UIView()


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
        viewContent.layer.cornerRadius = 18
        layoutdict["viewContent"] = viewContent
        contentView.addSubview(viewContent)
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "1")
        imageProduct.contentMode = .scaleAspectFill
        imageProduct.layer.cornerRadius = 35
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
        
        lblConfirmation.translatesAutoresizingMaskIntoConstraints = false
        lblConfirmation.text = "Waiting Confirmation"
        lblConfirmation.textAlignment = .left
        lblConfirmation.textColor = UIColor(red: 228/255.0, green: 152/255.0, blue: 0/255.0, alpha: 2)
        lblConfirmation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblConfirmation"] = lblConfirmation
        viewContent.addSubview(lblConfirmation)
        
        viewDot.translatesAutoresizingMaskIntoConstraints = false
        viewDot.backgroundColor = UIColor(red: 228/255.0, green: 152/255.0, blue: 0/255.0, alpha: 2)
        viewDot.layer.cornerRadius = 4
        layoutdict["viewDot"] = viewDot
        viewContent.addSubview(viewDot)
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imageProduct(70)]", options: [], metrics: nil, views: layoutdict))
        
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-15-[lblTitle]-10-[lblLocation(16)]-10-[lblConfirmation(16)]-15-|", options: [], metrics: nil, views: layoutdict))
        
        viewDot.topAnchor.constraint(equalTo: lblLocation.bottomAnchor, constant: 14).isActive = true
        viewDot.heightAnchor.constraint(equalToConstant: 8).isActive = true
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imageProduct(70)]-10-[lblTitle]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imageProduct(70)]-10-[lblLocation]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imageProduct(70)]-10-[viewDot(8)]-10-[lblConfirmation]-10-|", options: [], metrics: nil, views: layoutdict))
        
    }


}
