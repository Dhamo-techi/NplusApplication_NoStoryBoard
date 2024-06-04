//
//  walletCollectionCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 03/06/24.
//

import UIKit

class walletCollectionCell: UICollectionViewCell {
    
    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewUpdate_amount = UIView()
    
    var lblEarned_or_loss = UILabel()
    
    var imgvwUpperArrow = UIImageView()
    
    var lblEarned_or_lossAmt = UILabel()
    
    var viewPurpose = UIView()

    var lblPurpose = UILabel()
    
    var lblPurposeDetail = UILabel()

    var lblDate = UILabel()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.backgroundColor = .none
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 4
        layer.masksToBounds = false

        setupView()
    }
    
    func setupView(){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .white
        viewContent.layer.cornerRadius = 12
        viewContent.layer.masksToBounds = true
        layoutdict["viewContent"] = viewContent
        contentView.addSubview(viewContent)
        
        viewUpdate_amount.translatesAutoresizingMaskIntoConstraints = false
        viewUpdate_amount.backgroundColor = .clear
        layoutdict["viewUpdate_amount"] = viewUpdate_amount
        viewContent.addSubview(viewUpdate_amount)
        
        lblEarned_or_loss.translatesAutoresizingMaskIntoConstraints = false
        lblEarned_or_loss.text = "EARNED"
        lblEarned_or_loss.textAlignment = .left
        lblEarned_or_loss.textColor = .black
        lblEarned_or_loss.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        layoutdict["lblEarned_or_loss"] = lblEarned_or_loss
        viewUpdate_amount.addSubview(lblEarned_or_loss)
        
        imgvwUpperArrow.translatesAutoresizingMaskIntoConstraints = false
        imgvwUpperArrow.image = UIImage(named: "upArrow")
        imgvwUpperArrow.contentMode = .scaleAspectFit
        layoutdict["imgvwUpperArrow"] = imgvwUpperArrow
        viewUpdate_amount.addSubview(imgvwUpperArrow)
        
        lblEarned_or_lossAmt.translatesAutoresizingMaskIntoConstraints = false
        lblEarned_or_lossAmt.text = "₹ 3.00"
        lblEarned_or_lossAmt.textAlignment = .left
        lblEarned_or_lossAmt.textColor = .black
        lblEarned_or_lossAmt.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        layoutdict["lblEarned_or_lossAmt"] = lblEarned_or_lossAmt
        viewUpdate_amount.addSubview(lblEarned_or_lossAmt)
        
        viewPurpose.translatesAutoresizingMaskIntoConstraints = false
        viewPurpose.backgroundColor = .clear
        layoutdict["viewPurpose"] = viewPurpose
        viewContent.addSubview(viewPurpose)
        
        lblPurpose.translatesAutoresizingMaskIntoConstraints = false
        lblPurpose.text = "Purpose:"
        lblPurpose.textAlignment = .left
        lblPurpose.textColor = .lightGray
        lblPurpose.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        lblPurpose.textColor = .black
        layoutdict["lblPurpose"] = lblPurpose
        viewPurpose.addSubview(lblPurpose)

        lblPurposeDetail.translatesAutoresizingMaskIntoConstraints = false
        lblPurposeDetail.text = "Cancelled Cleaning Service Amount Added"
        lblPurposeDetail.numberOfLines = 0
        lblPurposeDetail.textAlignment = .left
        lblPurposeDetail.textColor = .lightGray
        lblPurposeDetail.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        lblPurposeDetail.textColor = .black
        layoutdict["lblPurposeDetail"] = lblPurposeDetail
        viewPurpose.addSubview(lblPurposeDetail)

                               
        lblDate.translatesAutoresizingMaskIntoConstraints = false
        lblDate.text = "27-05-2024 05:55 PM"
        lblDate.textAlignment = .left
        lblDate.textColor = .lightGray
        lblDate.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutdict["lblDate"] = lblDate
        viewContent.addSubview(lblDate)
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[viewUpdate_amount(30)]-5-[viewPurpose(70)]-5-[lblDate]-10-|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewUpdate_amount]|", options: [], metrics: nil, views: layoutdict))
        
        viewUpdate_amount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblEarned_or_loss]|", options: [], metrics: nil, views: layoutdict))
        viewUpdate_amount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblEarned_or_loss][imgvwUpperArrow(20)]", options: [], metrics: nil, views: layoutdict))
        
        viewUpdate_amount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[imgvwUpperArrow(25)]|", options: [], metrics: nil, views: layoutdict))
        
        viewUpdate_amount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblEarned_or_lossAmt]|", options: [], metrics: nil, views: layoutdict))
        viewUpdate_amount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[lblEarned_or_lossAmt]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewPurpose]|", options: [], metrics: nil, views: layoutdict))
        
        viewPurpose.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[lblPurpose]", options: [], metrics: nil, views: layoutdict))
        viewPurpose.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[lblPurposeDetail]", options: [], metrics: nil, views: layoutdict))
        viewPurpose.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblPurpose]-5-[lblPurposeDetail]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblDate]|", options: [], metrics: nil, views: layoutdict))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
