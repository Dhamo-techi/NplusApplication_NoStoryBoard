//
//  ProfileTagView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 04/06/24.
//

import UIKit

class ProfileTagView: UIView {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewProfileContent = UIView()

    var imageProfile = UIImageView()

    var stackviewPersonDetails = UIStackView()
    
    var viewNameDetails = UIView()
    
    var viewNameDetailsTitle = UIView()

    var lblNameTitle = UILabel()
    
    var viewName = UIView()
    
    var lblName = UILabel()
    
    var viewRatingDetails = UIView()
    
    var viewRatingTitle = UIView()

    var lblRatingTitle = UILabel()
    
    var viewRating = UIView()
    
    var lblRating = UILabel()
    
    var viewServiceTypesDetails = UIView()
    
    var viewServiceTypesTitle = UIView()

    var lblServiceTypesTitle = UILabel()
    
    var viewServiceTypes = UIView()
    
    var lblServiceTypes = UILabel()
    
    var viewServiceVehicleDetails = UIView()
    
    var viewServiceVehicleTitle = UIView()

    var lblServiceVehicleTitle = UILabel()
    
    var viewServiceVehicle = UIView()
    
    var lblServiceVehicle = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
        
        baseView.backgroundColor = .white
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .red
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        
        viewProfileContent.translatesAutoresizingMaskIntoConstraints = false
        viewProfileContent.backgroundColor = .white
        layoutdict["viewProfileContent"] = viewProfileContent
        viewContent.addSubview(viewProfileContent)
        
        imageProfile.translatesAutoresizingMaskIntoConstraints = false
        imageProfile.image = UIImage(named: "Profile")
        imageProfile.contentMode = .scaleAspectFill
        imageProfile.layer.masksToBounds = true
        layoutdict["imageProfile"] = imageProfile
        viewProfileContent.addSubview(imageProfile)
        
        stackviewPersonDetails.translatesAutoresizingMaskIntoConstraints = false
        stackviewPersonDetails.backgroundColor = .white
        stackviewPersonDetails.axis = .vertical
        stackviewPersonDetails.alignment = .fill
        stackviewPersonDetails.distribution = .fillEqually
        stackviewPersonDetails.spacing = 15
        layoutdict["stackviewPersonDetails"] = stackviewPersonDetails
        viewProfileContent.addSubview(stackviewPersonDetails)
        
        //Name
        viewNameDetails.translatesAutoresizingMaskIntoConstraints = false
        viewNameDetails.backgroundColor = .clear
        layoutdict["viewNameDetails"] = viewNameDetails
        stackviewPersonDetails.addArrangedSubview(viewNameDetails)
        
        viewNameDetailsTitle.translatesAutoresizingMaskIntoConstraints = false
        viewNameDetailsTitle.backgroundColor = .clear
        layoutdict["viewNameDetailsTitle"] = viewNameDetailsTitle
        viewNameDetails.addSubview(viewNameDetailsTitle)
        
        lblNameTitle.translatesAutoresizingMaskIntoConstraints = false
        lblNameTitle.text = "User Name"
        lblNameTitle.textAlignment = .left
        lblNameTitle.textColor = .black
        lblNameTitle.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
        layoutdict["lblNameTitle"] = lblNameTitle
        viewNameDetailsTitle.addSubview(lblNameTitle)
        
        viewName.translatesAutoresizingMaskIntoConstraints = false
        viewName.backgroundColor = .clear
        layoutdict["viewName"] = viewName
        viewNameDetails.addSubview(viewName)
        
        lblName.translatesAutoresizingMaskIntoConstraints = false
        lblName.text = ": akash nplustest"
        lblName.textAlignment = .left
        lblName.textColor = .black
        lblName.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblName"] = lblName
        viewName.addSubview(lblName)
        
        //Rating
        viewRatingDetails.translatesAutoresizingMaskIntoConstraints = false
        viewRatingDetails.backgroundColor = .clear
        layoutdict["viewRatingDetails"] = viewRatingDetails
        stackviewPersonDetails.addArrangedSubview(viewRatingDetails)
        
        viewRatingTitle.translatesAutoresizingMaskIntoConstraints = false
        viewRatingTitle.backgroundColor = .clear
        layoutdict["viewRatingTitle"] = viewRatingTitle
        viewRatingDetails.addSubview(viewRatingTitle)
        
        lblRatingTitle.translatesAutoresizingMaskIntoConstraints = false
        lblRatingTitle.text = "Rating"
        lblRatingTitle.textAlignment = .left
        lblRatingTitle.textColor = .black
        lblRatingTitle.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
        layoutdict["lblRatingTitle"] = lblRatingTitle
        viewRatingTitle.addSubview(lblRatingTitle)
        
        viewRating.translatesAutoresizingMaskIntoConstraints = false
        viewRating.backgroundColor = .clear
        layoutdict["viewRating"] = viewRating
        viewRatingDetails.addSubview(viewRating)
        
        lblRating.translatesAutoresizingMaskIntoConstraints = false
        lblRating.text = ": 0"
        lblRating.textAlignment = .left
        lblRating.textColor = .black
        lblRating.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblRating"] = lblRating
        viewRating.addSubview(lblRating)

        
        //ServiceTypes
        viewServiceTypesDetails.translatesAutoresizingMaskIntoConstraints = false
        viewServiceTypesDetails.backgroundColor = .clear
        layoutdict["viewServiceTypesDetails"] = viewServiceTypesDetails
        stackviewPersonDetails.addArrangedSubview(viewServiceTypesDetails)
        
        viewServiceTypesTitle.translatesAutoresizingMaskIntoConstraints = false
        viewServiceTypesTitle.backgroundColor = .clear
        layoutdict["viewServiceTypesTitle"] = viewServiceTypesTitle
        viewServiceTypesDetails.addSubview(viewServiceTypesTitle)
        
        lblServiceTypesTitle.translatesAutoresizingMaskIntoConstraints = false
        lblServiceTypesTitle.text = "Service Types"
        lblServiceTypesTitle.textAlignment = .left
        lblServiceTypesTitle.textColor = .black
        lblServiceTypesTitle.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
        layoutdict["lblServiceTypesTitle"] = lblServiceTypesTitle
        viewServiceTypesTitle.addSubview(lblServiceTypesTitle)
        
        viewServiceTypes.translatesAutoresizingMaskIntoConstraints = false
        viewServiceTypes.backgroundColor = .clear
        layoutdict["viewServiceTypes"] = viewServiceTypes
        viewServiceTypesDetails.addSubview(viewServiceTypes)
        
        lblServiceTypes.translatesAutoresizingMaskIntoConstraints = false
        lblServiceTypes.text = ": Tyre puncture/Change"
        lblServiceTypes.textAlignment = .left
        lblServiceTypes.textColor = .black
        lblServiceTypes.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblServiceTypes"] = lblServiceTypes
        viewServiceTypes.addSubview(lblServiceTypes)
        
        
        //ServiceVehicle
        viewServiceVehicleDetails.translatesAutoresizingMaskIntoConstraints = false
        viewServiceVehicleDetails.backgroundColor = .clear
        layoutdict["viewServiceVehicleDetails"] = viewServiceVehicleDetails
        stackviewPersonDetails.addArrangedSubview(viewServiceVehicleDetails)
        
        viewServiceVehicleTitle.translatesAutoresizingMaskIntoConstraints = false
        viewServiceVehicleTitle.backgroundColor = .clear
        layoutdict["viewServiceVehicleTitle"] = viewServiceVehicleTitle
        viewServiceVehicleDetails.addSubview(viewServiceVehicleTitle)
        
        lblServiceVehicleTitle.translatesAutoresizingMaskIntoConstraints = false
        lblServiceVehicleTitle.text = "Service Vehicle"
        lblServiceVehicleTitle.textAlignment = .left
        lblServiceVehicleTitle.textColor = .black
        lblServiceVehicleTitle.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
        layoutdict["lblServiceVehicleTitle"] = lblServiceVehicleTitle
        viewServiceVehicleTitle.addSubview(lblServiceVehicleTitle)
        
        viewServiceVehicle.translatesAutoresizingMaskIntoConstraints = false
        viewServiceVehicle.backgroundColor = .clear
        layoutdict["viewServiceVehicle"] = viewServiceVehicle
        viewServiceVehicleDetails.addSubview(viewServiceVehicle)
        
        lblServiceVehicle.translatesAutoresizingMaskIntoConstraints = false
        lblServiceVehicle.text = ": BIKE"
        lblServiceVehicle.textAlignment = .left
        lblServiceVehicle.textColor = .black
        lblServiceVehicle.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        layoutdict["lblServiceVehicle"] = lblServiceVehicle
        viewServiceVehicle.addSubview(lblServiceVehicle)
        
        
        
       
        
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewProfileContent.centerXAnchor.constraint(equalTo: viewContent.centerXAnchor, constant: 0).isActive = true
        viewProfileContent.centerYAnchor.constraint(equalTo: viewContent.centerYAnchor, constant: 0).isActive = true
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewProfileContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewProfileContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[imageProfile(110)]", options: [], metrics: nil, views: layoutdict))
        viewProfileContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[stackviewPersonDetails]|", options: [], metrics: nil, views: layoutdict))
        viewProfileContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[imageProfile(100)][stackviewPersonDetails]|", options: [], metrics: nil, views: layoutdict))
        
        //Name Constraints
        // height for Name details view
        
        viewNameDetails.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        //Baseview for NameDetailsTitle
        
        viewNameDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewNameDetailsTitle]|", options: [], metrics: nil, views: layoutdict))
        viewNameDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewName]|", options: [], metrics: nil, views: layoutdict))
        viewNameDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewNameDetailsTitle(140)][viewName]-20-|", options: [], metrics: nil, views: layoutdict))
        
        //Name Title Label Constrains
        
        viewNameDetailsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblNameTitle]|", options: [], metrics: nil, views: layoutdict))
        viewNameDetailsTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblNameTitle]|", options: [], metrics: nil, views: layoutdict))
        
        //Name Detail Label Constrains
        
        viewName.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblName]|", options: [], metrics: nil, views: layoutdict))
        viewName.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblName]|", options: [], metrics: nil, views: layoutdict))
        
        //Rating Constraints
        // height for Rating details view
        
        viewRatingDetails.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        //Baseview for Rating Title
        
        viewRatingDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewRatingTitle]|", options: [], metrics: nil, views: layoutdict))
        viewRatingDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewRating]|", options: [], metrics: nil, views: layoutdict))
        viewRatingDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewRatingTitle(140)][viewRating]-20-|", options: [], metrics: nil, views: layoutdict))
        
        //Rating Title Label Constrains
        
        viewRatingTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblRatingTitle]|", options: [], metrics: nil, views: layoutdict))
        viewRatingTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblRatingTitle]|", options: [], metrics: nil, views: layoutdict))
        
        //Rating Detail Label Constrains
        
        viewRating.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblRating]|", options: [], metrics: nil, views: layoutdict))
        viewRating.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblRating]|", options: [], metrics: nil, views: layoutdict))
        
        
        //ServiceTypes Constraints
        // height for ServiceTypes details view
        
        viewServiceTypesDetails.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        //Baseview for ServiceTypes Title
        
        viewServiceTypesDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewServiceTypesTitle]|", options: [], metrics: nil, views: layoutdict))
        viewServiceTypesDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewServiceTypes]|", options: [], metrics: nil, views: layoutdict))
        viewServiceTypesDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewServiceTypesTitle(140)][viewServiceTypes]-20-|", options: [], metrics: nil, views: layoutdict))
        
        //ServiceTypes Title Label Constrains
        
        viewServiceTypesTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceTypesTitle]|", options: [], metrics: nil, views: layoutdict))
        viewServiceTypesTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblServiceTypesTitle]|", options: [], metrics: nil, views: layoutdict))
        
        //ServiceTypes Detail Label Constrains
        
        viewServiceTypes.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceTypes]|", options: [], metrics: nil, views: layoutdict))
        viewServiceTypes.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblServiceTypes]|", options: [], metrics: nil, views: layoutdict))
        
        //Service Vehicle Constraints
        // height for Service Vehicle details view
        
        viewServiceVehicleDetails.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        //Baseview for Service Vehicle Title
        
        viewServiceVehicleDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewServiceVehicleTitle]|", options: [], metrics: nil, views: layoutdict))
        viewServiceVehicleDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewServiceVehicle]|", options: [], metrics: nil, views: layoutdict))
        viewServiceVehicleDetails.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewServiceVehicleTitle(140)][viewServiceVehicle]-20-|", options: [], metrics: nil, views: layoutdict))
        
        //Service Vehicle Title Label Constrains
        
        viewServiceVehicleTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceVehicleTitle]|", options: [], metrics: nil, views: layoutdict))
        viewServiceVehicleTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblServiceVehicleTitle]|", options: [], metrics: nil, views: layoutdict))
        
        //Service Vehicle Detail Label Constrains
        
        viewServiceVehicle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblServiceVehicle]|", options: [], metrics: nil, views: layoutdict))
        viewServiceVehicle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblServiceVehicle]|", options: [], metrics: nil, views: layoutdict))

    }
}
