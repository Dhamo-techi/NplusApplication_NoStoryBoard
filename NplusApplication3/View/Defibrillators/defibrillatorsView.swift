//
//  defibrillatorsView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 04/06/24.
//

import UIKit

class defibrillatorsView: UIView {
    
    let viewAll = UIImage(named: "downword")
    let viewLess = UIImage(named : "upward")
    
    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    
    var btnBack = UIButton()
    
    var lblViewTitle = UILabel()
    
    var viewAllcities = UIView()

    var lblAllCities  = UILabel()
    
    var btnViewAllCities = UIButton()
    
    var viewdefibrillatorsDetails = UIView()

    var viewNewdefibrillators = UIView()

    var lblNewDefibrillators  = UILabel()

    var lblNewDefibrillatorsCount  = UILabel()

    var viewNewdefibrillatorsSection = UIView()

    var tableViewNewdefibrillators = UITableView()

    var viewNewdefibrillators_SingleSection = UIView()
    
    var viewA = UIView()
    
    var viewB = UIView()

    
    var viewNewdefibrillators_SingleSectionContent = UIView()
    
    var imageProduct = UIImageView()
    
    var lblTitle = UILabel()
    
    var lblLocation = UILabel()
    
    var lblConfirmation = UILabel()
    
    var viewDot = UIView()
    
    
    
    
    var btnViewAllNewdefibrillators = UIButton()
    
    var tableViewNewdefibrillatorsHeightConstraint: NSLayoutConstraint!

    var viewAlldefibrillatorsSection = UIView()
    
    var viewTotaldefibrillatorsTitle = UIView()

    var lblTotalDefibrillators  = UILabel()

    var lblTotalDefibrillatorsCount  = UILabel()
    
    var tableViewTotaldefibrillators = UITableView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
    
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = UIColor(red: 235/255.0, green: 235/255.0, blue: 235/255.0, alpha: 2)
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        baseView.backgroundColor = .white
    
        viewBack_title.translatesAutoresizingMaskIntoConstraints = false
        viewBack_title.backgroundColor = .white
        layoutdict["viewBack_title"] = viewBack_title
        viewContent.addSubview(viewBack_title)
    
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        let backImage = UIImage(named: "backArrowImage")
        btnBack.setImage(backImage, for: .normal)
        btnBack.backgroundColor = .none
        btnBack.tintColor = .black
        btnBack.layer.cornerRadius = 12
        layoutdict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
    
        lblViewTitle.translatesAutoresizingMaskIntoConstraints = false
        lblViewTitle.text = "Defibrillators"
        lblViewTitle.textAlignment = .center
        lblViewTitle.textColor = .black
        lblViewTitle.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        layoutdict["lblViewTitle"] = lblViewTitle
        viewBack_title.addSubview(lblViewTitle)
    
        viewAllcities.translatesAutoresizingMaskIntoConstraints = false
        viewAllcities.backgroundColor = .white
        layoutdict["viewAllcities"] = viewAllcities
        viewContent.addSubview(viewAllcities)

        lblAllCities.translatesAutoresizingMaskIntoConstraints = false
        lblAllCities.text = "All cities"
        lblAllCities.textAlignment = .center
        lblAllCities.textColor = .black
        lblAllCities.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["lblAllCities"] = lblAllCities
        viewAllcities.addSubview(lblAllCities)
        
        btnViewAllCities.translatesAutoresizingMaskIntoConstraints = false
        btnViewAllCities.setImage(viewAll, for: .normal)
        btnViewAllCities.setImage(viewLess, for: .selected)
        btnViewAllCities.isSelected = false
        btnViewAllCities.setImage(viewAll, for: .normal)
        btnViewAllCities.backgroundColor = .none
        btnViewAllCities.tintColor = .black
        btnViewAllCities.layer.cornerRadius = 12
        layoutdict["btnViewAllCities"] = btnViewAllCities
        viewAllcities.addSubview(btnViewAllCities)
    
        viewdefibrillatorsDetails.translatesAutoresizingMaskIntoConstraints = false
//            UIColor(red: 235/255.0, green: 235/255.0, blue: 235/255.0, alpha: 2)
        layoutdict["viewdefibrillatorsDetails"] = viewdefibrillatorsDetails
        viewContent.addSubview(viewdefibrillatorsDetails)
        
        viewNewdefibrillators.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewNewdefibrillators"] = viewNewdefibrillators
        viewdefibrillatorsDetails.addSubview(viewNewdefibrillators)

        lblNewDefibrillators.translatesAutoresizingMaskIntoConstraints = false
        lblNewDefibrillators.text = "New Defibrillators"
        lblNewDefibrillators.textAlignment = .center
        lblNewDefibrillators.textColor = .black
        lblNewDefibrillators.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        layoutdict["lblNewDefibrillators"] = lblNewDefibrillators
        viewNewdefibrillators.addSubview(lblNewDefibrillators)

        lblNewDefibrillatorsCount.translatesAutoresizingMaskIntoConstraints = false
        lblNewDefibrillatorsCount.text = "3 items"
        lblNewDefibrillatorsCount.textAlignment = .center
        lblNewDefibrillatorsCount.textColor = .gray
        lblNewDefibrillatorsCount.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutdict["lblNewDefibrillatorsCount"] = lblNewDefibrillatorsCount
        viewNewdefibrillators.addSubview(lblNewDefibrillatorsCount)

        viewNewdefibrillatorsSection.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewNewdefibrillatorsSection"] = viewNewdefibrillatorsSection
        viewdefibrillatorsDetails.addSubview(viewNewdefibrillatorsSection)

        viewA.translatesAutoresizingMaskIntoConstraints = false
        viewA.isHidden = false
        layoutdict["viewA"] = viewA
        viewA.layer.cornerRadius = 18
        viewA.backgroundColor = .white
        viewA.layer.shadowOpacity = 0.5
        viewA.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewA.layer.shadowRadius = 3
        viewNewdefibrillatorsSection.addSubview(viewA)
        
        viewB.translatesAutoresizingMaskIntoConstraints = false
        viewB.isHidden = false
        layoutdict["viewB"] = viewB
        viewB.backgroundColor = .white
        viewB.layer.cornerRadius = 18
        viewB.layer.shadowOpacity = 0.5
        viewB.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewB.layer.shadowRadius = 3
        viewNewdefibrillatorsSection.addSubview(viewB)
        viewA.bringSubviewToFront(viewB)

        
        viewNewdefibrillators_SingleSection.translatesAutoresizingMaskIntoConstraints = false
        viewNewdefibrillators_SingleSection.isHidden = false
        layoutdict["viewNewdefibrillators_SingleSection"] = viewNewdefibrillators_SingleSection
        viewNewdefibrillators_SingleSection.backgroundColor = .clear
        viewNewdefibrillatorsSection.addSubview(viewNewdefibrillators_SingleSection)
        
        viewNewdefibrillators_SingleSectionContent.translatesAutoresizingMaskIntoConstraints = false
        viewNewdefibrillators_SingleSectionContent.backgroundColor = .white
        viewNewdefibrillators_SingleSectionContent.layer.cornerRadius = 18
        layoutdict["viewNewdefibrillators_SingleSectionContent"] = viewNewdefibrillators_SingleSectionContent
        viewNewdefibrillators_SingleSection.addSubview(viewNewdefibrillators_SingleSectionContent)
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "1")
        imageProduct.contentMode = .scaleAspectFill
        imageProduct.layer.cornerRadius = 35
        imageProduct.layer.masksToBounds = true
        layoutdict["imageProduct"] = imageProduct
        viewNewdefibrillators_SingleSectionContent.addSubview(imageProduct)
        
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.text = "N 2022"
        lblTitle.numberOfLines = 0
        lblTitle.textAlignment = .left
        lblTitle.textColor = .black
        lblTitle.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        layoutdict["lblTitle"] = lblTitle
        viewNewdefibrillators_SingleSectionContent.addSubview(lblTitle)
        
        lblLocation.translatesAutoresizingMaskIntoConstraints = false
        lblLocation.text = "Kumeliy 17-7,kaunas LT-41127"
        lblLocation.textAlignment = .left
        lblLocation.textColor = .black
        lblLocation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblLocation"] = lblLocation
        viewNewdefibrillators_SingleSectionContent.addSubview(lblLocation)
        
        lblConfirmation.translatesAutoresizingMaskIntoConstraints = false
        lblConfirmation.text = "Waiting Confirmation"
        lblConfirmation.textAlignment = .left
        lblConfirmation.textColor = UIColor(red: 228/255.0, green: 152/255.0, blue: 0/255.0, alpha: 2)
        lblConfirmation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblConfirmation"] = lblConfirmation
        viewNewdefibrillators_SingleSectionContent.addSubview(lblConfirmation)
        
        viewDot.translatesAutoresizingMaskIntoConstraints = false
        viewDot.backgroundColor = UIColor(red: 228/255.0, green: 152/255.0, blue: 0/255.0, alpha: 2)
        viewDot.layer.cornerRadius = 4
        layoutdict["viewDot"] = viewDot
        viewNewdefibrillators_SingleSectionContent.addSubview(viewDot)
        
        

        tableViewNewdefibrillators.translatesAutoresizingMaskIntoConstraints = false
        tableViewNewdefibrillators.separatorStyle = .none
        tableViewNewdefibrillators.isHidden = true
        tableViewNewdefibrillators.backgroundColor = .none
        layoutdict["tableViewNewdefibrillators"] = tableViewNewdefibrillators
        viewNewdefibrillatorsSection.addSubview(tableViewNewdefibrillators)
    
        btnViewAllNewdefibrillators.translatesAutoresizingMaskIntoConstraints = false
        btnViewAllNewdefibrillators.setImage(viewAll, for: .normal)
        btnViewAllNewdefibrillators.setImage(viewLess, for: .selected)
        btnViewAllNewdefibrillators.isSelected = false
        btnViewAllNewdefibrillators.setImage(viewAll, for: .normal)
        btnViewAllNewdefibrillators.backgroundColor = .clear
        btnViewAllNewdefibrillators.tintColor = .black
        btnViewAllNewdefibrillators.layer.cornerRadius = 12
        layoutdict["btnViewAllNewdefibrillators"] = btnViewAllNewdefibrillators
        viewNewdefibrillatorsSection.addSubview(btnViewAllNewdefibrillators)
        
        viewAlldefibrillatorsSection.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewAlldefibrillatorsSection"] = viewAlldefibrillatorsSection
        viewAlldefibrillatorsSection.backgroundColor = .green
        viewdefibrillatorsDetails.addSubview(viewAlldefibrillatorsSection)
        
        viewTotaldefibrillatorsTitle.translatesAutoresizingMaskIntoConstraints = false
        viewTotaldefibrillatorsTitle.backgroundColor = .white
        layoutdict["viewTotaldefibrillatorsTitle"] = viewTotaldefibrillatorsTitle
        viewAlldefibrillatorsSection.addSubview(viewTotaldefibrillatorsTitle)

        lblTotalDefibrillators.translatesAutoresizingMaskIntoConstraints = false
        lblTotalDefibrillators.text = "Defibrillators"
        lblTotalDefibrillators.textAlignment = .center
        lblTotalDefibrillators.textColor = .black
        lblTotalDefibrillators.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        layoutdict["lblTotalDefibrillators"] = lblTotalDefibrillators
        viewTotaldefibrillatorsTitle.addSubview(lblTotalDefibrillators)

        lblTotalDefibrillatorsCount.translatesAutoresizingMaskIntoConstraints = false
        lblTotalDefibrillatorsCount.text = "112 items"
        lblTotalDefibrillatorsCount.textAlignment = .center
        lblTotalDefibrillatorsCount.textColor = .gray
        lblTotalDefibrillatorsCount.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        layoutdict["lblTotalDefibrillatorsCount"] = lblTotalDefibrillatorsCount
        viewTotaldefibrillatorsTitle.addSubview(lblTotalDefibrillatorsCount)

        tableViewTotaldefibrillators.translatesAutoresizingMaskIntoConstraints = false
        tableViewTotaldefibrillators.separatorStyle = .none
        layoutdict["tableViewTotaldefibrillators"] = tableViewTotaldefibrillators
        viewAlldefibrillatorsSection.addSubview(tableViewTotaldefibrillators)
        
        
        
        //constraints
        
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
    
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(50)][viewAllcities(50)][viewdefibrillatorsDetails]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewAllcities]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewdefibrillatorsDetails]|", options: [], metrics: nil, views: layoutdict))
    
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[btnBack]-10-|", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblViewTitle]|", options: [], metrics: nil, views: layoutdict))
        lblViewTitle.centerXAnchor.constraint(equalTo: viewBack_title.centerXAnchor, constant: 0).isActive = true
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[btnBack(40)]", options: [], metrics: nil, views: layoutdict))
        
        viewAllcities.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblAllCities]|", options: [], metrics: nil, views: layoutdict))
        viewAllcities.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblAllCities]", options: [], metrics: nil, views: layoutdict))
        
        viewAllcities.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[btnViewAllCities]-10-|", options: [], metrics: nil, views: layoutdict))
        viewAllcities.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[btnViewAllCities(30)]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewdefibrillatorsDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewNewdefibrillators(50)][viewNewdefibrillatorsSection][viewAlldefibrillatorsSection]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewdefibrillatorsDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewNewdefibrillators]|", options: [], metrics: nil, views: layoutdict))
        viewdefibrillatorsDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewNewdefibrillatorsSection]|", options: [], metrics: nil, views: layoutdict))
        viewdefibrillatorsDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewAlldefibrillatorsSection]|", options: [], metrics: nil, views: layoutdict))

        
        viewNewdefibrillators.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblNewDefibrillators]|", options: [], metrics: nil, views: layoutdict))
        viewNewdefibrillators.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblNewDefibrillatorsCount]|", options: [], metrics: nil, views: layoutdict))
        viewNewdefibrillators.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblNewDefibrillators]", options: [], metrics: nil, views: layoutdict))
        viewNewdefibrillators.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[lblNewDefibrillatorsCount]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[viewNewdefibrillators_SingleSection(118)]", options: [], metrics: nil, views: layoutdict))
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[viewNewdefibrillators_SingleSection]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewA.heightAnchor.constraint(equalToConstant: 5).isActive = true
        viewA.topAnchor.constraint(equalTo: viewNewdefibrillatorsSection.topAnchor, constant: 0).isActive = true
        viewA.bottomAnchor.constraint(equalTo: viewNewdefibrillators_SingleSection.bottomAnchor, constant: 0).isActive = true
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-40-[viewA]-40-|", options: [], metrics: nil, views: layoutdict))
        
        viewB.heightAnchor.constraint(equalToConstant: 5).isActive = true
        viewB.topAnchor.constraint(equalTo: viewNewdefibrillatorsSection.topAnchor, constant: 5).isActive = true
        viewB.bottomAnchor.constraint(equalTo: viewNewdefibrillators_SingleSection.bottomAnchor, constant: 0).isActive = true
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[viewB]-30-|", options: [], metrics: nil, views: layoutdict))
        
        viewNewdefibrillators_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewNewdefibrillators_SingleSectionContent]|", options: [], metrics: nil, views: layoutdict))
        viewNewdefibrillators_SingleSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewNewdefibrillators_SingleSectionContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewNewdefibrillators_SingleSectionContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imageProduct(70)]", options: [], metrics: nil, views: layoutdict))
        
        
        viewNewdefibrillators_SingleSectionContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-15-[lblTitle]-10-[lblLocation(16)]-10-[lblConfirmation(16)]-15-|", options: [], metrics: nil, views: layoutdict))
        
        viewDot.topAnchor.constraint(equalTo: lblLocation.bottomAnchor, constant: 14).isActive = true
        viewDot.heightAnchor.constraint(equalToConstant: 8).isActive = true
        
        viewNewdefibrillators_SingleSectionContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imageProduct(70)]-10-[lblTitle]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewNewdefibrillators_SingleSectionContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imageProduct(70)]-10-[lblLocation]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewNewdefibrillators_SingleSectionContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imageProduct(70)]-10-[viewDot(8)]-10-[lblConfirmation]-10-|", options: [], metrics: nil, views: layoutdict))
        
        
        
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[tableViewNewdefibrillators][btnViewAllNewdefibrillators(60)]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[tableViewNewdefibrillators]-20-|", options: [], metrics: nil, views: layoutdict))
        viewNewdefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[btnViewAllNewdefibrillators]-20-|", options: [], metrics: nil, views: layoutdict))
        
        
        tableViewNewdefibrillators.heightAnchor.constraint(equalToConstant: 130).isActive = true
        if let heightConstraint = tableViewNewdefibrillators.constraints.first(where: { $0.firstAttribute == .height }) {
            tableViewNewdefibrillatorsHeightConstraint = heightConstraint
        }
        

        
        viewAlldefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewTotaldefibrillatorsTitle(50)][tableViewTotaldefibrillators]|", options: [], metrics: nil, views: layoutdict))


        viewAlldefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewTotaldefibrillatorsTitle]|", options: [], metrics: nil, views: layoutdict))

        viewAlldefibrillatorsSection.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[tableViewTotaldefibrillators]|", options: [], metrics: nil, views: layoutdict))

        viewTotaldefibrillatorsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblTotalDefibrillators]|", options: [], metrics: nil, views: layoutdict))
        viewTotaldefibrillatorsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblTotalDefibrillatorsCount]|", options: [], metrics: nil, views: layoutdict))
        viewTotaldefibrillatorsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblTotalDefibrillators]", options: [], metrics: nil, views: layoutdict))
        viewTotaldefibrillatorsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[lblTotalDefibrillatorsCount]-20-|", options: [], metrics: nil, views: layoutdict))
    }
}
