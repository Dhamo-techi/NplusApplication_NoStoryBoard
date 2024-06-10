//
//  MapView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 06/06/24.
//

import UIKit

class MapView: UIView {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var tabbarView = UIView()
    
    var viewDriver_ContentBase = UIView()
    
    var viewDriver_SingleSection = UIView()
    
    var viewA = UIView()
    
    var viewB = UIView()
        
    var imageProduct = UIImageView()
    
    var viewlbl = UIView()
    
    var lblTitle = UILabel()
    
    var lblLocation = UILabel()
    
    var lblConfirmation = UILabel()
    
    var viewKM = UIView()

    var lblKM = UILabel()
    
    var lblFromWhere = UILabel()
    
    var btnExpand = UIButton()

    var tableViewNewdefibrillators = UITableView()

    var tableViewNewdefibrillatorsHeightConstraint: NSLayoutConstraint!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
    
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .orange
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        
        tabbarView.translatesAutoresizingMaskIntoConstraints = false
        tabbarView.backgroundColor = .white
        layoutdict["tabbarView"] = tabbarView
        viewContent.addSubview(tabbarView)
        
        viewDriver_ContentBase.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewDriver_ContentBase"] = viewDriver_ContentBase
        viewContent.addSubview(viewDriver_ContentBase)
        
        viewDriver_SingleSection.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewDriver_SingleSection"] = viewDriver_SingleSection
        viewDriver_SingleSection.layer.cornerRadius = 12
        viewDriver_SingleSection.backgroundColor = .white
        viewDriver_SingleSection.layer.shadowOpacity = 0.5
        viewDriver_SingleSection.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewDriver_SingleSection.layer.shadowRadius = 3
        viewDriver_ContentBase.addSubview(viewDriver_SingleSection)
    
        viewA.translatesAutoresizingMaskIntoConstraints = false
        viewA.isHidden = false
        layoutdict["viewA"] = viewA
        viewA.layer.cornerRadius = 12
        viewA.backgroundColor = .white
        viewA.layer.shadowOpacity = 0.5
        viewA.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewA.layer.shadowRadius = 3
        viewDriver_ContentBase.addSubview(viewA)

        viewB.translatesAutoresizingMaskIntoConstraints = false
        viewB.isHidden = false
        layoutdict["viewB"] = viewB
        viewB.backgroundColor = .white
        viewB.layer.cornerRadius = 12
        viewB.layer.shadowOpacity = 0.5
        viewB.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewB.layer.shadowRadius = 3
        viewDriver_ContentBase.addSubview(viewB)

        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "1")
        imageProduct.contentMode = .scaleAspectFill
        imageProduct.layer.cornerRadius = 30
        imageProduct.layer.masksToBounds = true
        layoutdict["imageProduct"] = imageProduct
        viewDriver_SingleSection.addSubview(imageProduct)
        
        viewlbl.translatesAutoresizingMaskIntoConstraints = false
        viewlbl.backgroundColor = .white
        layoutdict["viewlbl"] = viewlbl
        viewDriver_SingleSection.addSubview(viewlbl)
        
        
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.text = "DhamoDharan"
        lblTitle.textAlignment = .left
        lblTitle.textColor = .black
        lblTitle.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["lblTitle"] = lblTitle
        viewlbl.addSubview(lblTitle)
        
        lblLocation.translatesAutoresizingMaskIntoConstraints = false
        lblLocation.text = "47, Male"
        lblLocation.textAlignment = .left
        lblLocation.textColor = .black
        lblLocation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblLocation"] = lblLocation
        viewlbl.addSubview(lblLocation)

        viewKM.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewKM"] = viewKM
        viewDriver_SingleSection.addSubview(viewKM)
        
        lblKM.translatesAutoresizingMaskIntoConstraints = false
        lblKM.text = "1.6 km."
        lblKM.textAlignment = .center
        lblKM.numberOfLines = 0
        lblKM.textColor = .black
        lblKM.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["lblKM"] = lblKM
        viewKM.addSubview(lblKM)
        
        
        btnExpand.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["btnExpand"] = btnExpand
        viewDriver_SingleSection.addSubview(btnExpand)


        tableViewNewdefibrillators.translatesAutoresizingMaskIntoConstraints = false
        tableViewNewdefibrillators.separatorStyle = .none
        tableViewNewdefibrillators.isHidden = true
        tableViewNewdefibrillators.backgroundColor = .clear
        layoutdict["tableViewNewdefibrillators"] = tableViewNewdefibrillators
        viewDriver_ContentBase.addSubview(tableViewNewdefibrillators)
        
        
        
    
    
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        tabbarView.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: 0).isActive = true
        tabbarView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[tabbarView]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_ContentBase.bottomAnchor.constraint(equalTo: tabbarView.topAnchor, constant: -5).isActive = true
        viewDriver_ContentBase.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDriver_ContentBase]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewDriver_ContentBase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[viewDriver_SingleSection(90)]|", options: [], metrics: nil, views: layoutdict))
        viewDriver_ContentBase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewDriver_SingleSection]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewA.bottomAnchor.constraint(equalTo: viewDriver_SingleSection.bottomAnchor, constant: -10).isActive = true
        viewA.heightAnchor.constraint(equalToConstant: 90).isActive = true
        viewDriver_ContentBase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[viewA]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewB.bottomAnchor.constraint(equalTo: viewDriver_SingleSection.bottomAnchor, constant: -5).isActive = true
        viewB.heightAnchor.constraint(equalToConstant: 90).isActive = true
        viewDriver_ContentBase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[viewB]-15-|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_ContentBase.bringSubviewToFront(viewDriver_SingleSection)

        
        
        imageProduct.heightAnchor.constraint(equalToConstant: 60).isActive = true
        imageProduct.centerYAnchor.constraint(equalTo: viewDriver_SingleSection.centerYAnchor, constant: 0).isActive = true
        viewDriver_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(60)]", options: [], metrics: nil, views: layoutdict))
        
        
        viewDriver_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[viewlbl]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[viewKM]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imageProduct(60)]-15-[viewlbl][viewKM(70)]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewlbl.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblTitle]-5-[lblLocation]|", options: [], metrics: nil, views: layoutdict))
        viewlbl.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblTitle]|", options: [], metrics: nil, views: layoutdict))
        viewlbl.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblLocation]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewKM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblKM]|", options: [], metrics: nil, views: layoutdict))
        viewKM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblKM]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnExpand]|", options: [], metrics: nil, views: layoutdict))
        viewDriver_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnExpand]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewDriver_ContentBase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[tableViewNewdefibrillators]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_ContentBase.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[tableViewNewdefibrillators]-10-|", options: [], metrics: nil, views: layoutdict))
        
        
        tableViewNewdefibrillators.heightAnchor.constraint(equalToConstant: 222).isActive = true
        if let heightConstraint = tableViewNewdefibrillators.constraints.first(where: { $0.firstAttribute == .height }) {
            tableViewNewdefibrillatorsHeightConstraint = heightConstraint
        }
    }
}
