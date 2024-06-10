//
//  MapTableViewCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 07/06/24.
//

import UIKit

class MapTableViewCell: UITableViewCell {

    var isExpanded: Bool = false

    var layoutdict = [String : Any]()
    
    var  viewContent = UIView()
        
    var viewDriver_SingleSection = UIView()
    
    var imageProduct = UIImageView()
    
    var viewlbl = UIView()
    
    var lblTitle = UILabel()
    
    var lblLocation = UILabel()
    
    var lblConfirmation = UILabel()
    
    var viewKM = UIView()

    var lblKM = UILabel()
        
    var viewDriver_Loc = UIView()
    
    var view_Loc = UIView()
    
    var img_LocPic = UIImageView()
    
    var lblDriver_Location = UILabel()

    

    var viewDriver_Profile = UIView()
    
    var img_ProfilePic = UIImageView()
    
    var view_Profilelbl = UIView()
    
    var Profile_lblTitle = UILabel()
    
    var Profile_lblLocation = UILabel()
        
    var viewProfile_KM = UIView()

    var Profile_lblKM = UILabel()

    var viewDriver_Member = UIView()

    var img_MemberPic1 = UIImageView()
    var img_MemberPic2 = UIImageView()

    var Profile_lblMember = UILabel()
    
    var viewDriver_Confirm = UIView()
    
    var stackviewDriver_loc = UIStackView()

    var viewDriver_KMandTime = UIView()

    var Driver_lblKMandTime = UILabel()

    var btnConfirm = UIButton()
    
    var btnReject = UIButton()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .clear
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func toggleExpansion() {
            isExpanded.toggle()
            viewDriver_SingleSection.isHidden = isExpanded
            viewDriver_Loc.isHidden = !isExpanded
        }
    
    func expand() {
            isExpanded = true
            viewDriver_SingleSection.isHidden = true
            viewDriver_Loc.isHidden = false
        }

        func collapse() {
            isExpanded = false
            viewDriver_SingleSection.isHidden = false
            viewDriver_Loc.isHidden = true
        }
    
    
    
    func setupViews(){
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewContent"] = viewContent
        viewContent.backgroundColor = .white
        viewContent.layer.cornerRadius = 12
        viewContent.layer.shadowOpacity = 0.5
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 2)
        viewContent.layer.shadowRadius = 3
        contentView.addSubview(viewContent)
    
        
        viewDriver_SingleSection.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewDriver_SingleSection"] = viewDriver_SingleSection
        viewContent.addSubview(viewDriver_SingleSection)
    

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
  
        
        viewDriver_Loc.translatesAutoresizingMaskIntoConstraints = false
        viewDriver_Loc.layer.cornerRadius = 12
        viewDriver_Loc.backgroundColor = UIColor(red: 214/255.0, green: 214/255.0, blue: 214/255.0, alpha: 2)
        viewDriver_Loc.isHidden = true
        layoutdict["viewDriver_Loc"] = viewDriver_Loc
        viewContent.addSubview(viewDriver_Loc)
        
        view_Loc.translatesAutoresizingMaskIntoConstraints = false
        view_Loc.backgroundColor = .clear
        layoutdict["view_Loc"] = view_Loc
        viewDriver_Loc.addSubview(view_Loc)
        
        img_LocPic.translatesAutoresizingMaskIntoConstraints = false
        img_LocPic.image = UIImage(named: "mapMarker")
        img_LocPic.contentMode = .scaleAspectFill
        img_LocPic.layer.cornerRadius = 10
        img_LocPic.layer.masksToBounds = true
        layoutdict["img_LocPic"] = img_LocPic
        view_Loc.addSubview(img_LocPic)
        
        lblDriver_Location.translatesAutoresizingMaskIntoConstraints = false
        lblDriver_Location.text = "Coimbatore LT-11.0, Coimbatore LT-76.9"
        lblDriver_Location.textAlignment = .left
        lblDriver_Location.numberOfLines = 0
        lblDriver_Location.textColor = .black
        lblDriver_Location.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblDriver_Location"] = lblDriver_Location
        view_Loc.addSubview(lblDriver_Location)
        
        
        viewDriver_Profile.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewDriver_Profile"] = viewDriver_Profile
        viewDriver_Profile.backgroundColor = .white
        viewDriver_Loc.addSubview(viewDriver_Profile)
        
        
        img_ProfilePic.translatesAutoresizingMaskIntoConstraints = false
        img_ProfilePic.image = UIImage(named: "1")
        img_ProfilePic.contentMode = .scaleAspectFill
        img_ProfilePic.layer.cornerRadius = 30
        img_ProfilePic.layer.masksToBounds = true
        layoutdict["img_ProfilePic"] = img_ProfilePic
        viewDriver_Profile.addSubview(img_ProfilePic)
        
        view_Profilelbl.translatesAutoresizingMaskIntoConstraints = false
        view_Profilelbl.backgroundColor = .white
        layoutdict["view_Profilelbl"] = view_Profilelbl
        viewDriver_Profile.addSubview(view_Profilelbl)
        
        
        Profile_lblTitle.translatesAutoresizingMaskIntoConstraints = false
        Profile_lblTitle.text = "DhamoDharan"
        Profile_lblTitle.textAlignment = .left
        Profile_lblTitle.textColor = .black
        Profile_lblTitle.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["Profile_lblTitle"] = Profile_lblTitle
        view_Profilelbl.addSubview(Profile_lblTitle)
        
        Profile_lblLocation.translatesAutoresizingMaskIntoConstraints = false
        Profile_lblLocation.text = "47, Male"
        Profile_lblLocation.textAlignment = .left
        Profile_lblLocation.textColor = .black
        Profile_lblLocation.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["Profile_lblLocation"] = Profile_lblLocation
        view_Profilelbl.addSubview(Profile_lblLocation)

        viewProfile_KM.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewProfile_KM"] = viewProfile_KM
        viewDriver_Profile.addSubview(viewProfile_KM)
        
        Profile_lblKM.translatesAutoresizingMaskIntoConstraints = false
        Profile_lblKM.text = "1.6 km."
        Profile_lblKM.textAlignment = .center
        Profile_lblKM.numberOfLines = 0
        Profile_lblKM.textColor = .black
        Profile_lblKM.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["Profile_lblKM"] = Profile_lblKM
        viewProfile_KM.addSubview(Profile_lblKM)
        
        
        
        
        viewDriver_Member.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewDriver_Member"] = viewDriver_Member
        viewDriver_Member.backgroundColor = .white
        viewDriver_Loc.addSubview(viewDriver_Member)
        
        
        img_MemberPic1.translatesAutoresizingMaskIntoConstraints = false
        img_MemberPic1.image = UIImage(named: "1")
        img_MemberPic1.contentMode = .scaleAspectFill
        img_MemberPic1.layer.cornerRadius = 15
        img_MemberPic1.layer.masksToBounds = true
        layoutdict["img_MemberPic1"] = img_MemberPic1
        viewDriver_Member.addSubview(img_MemberPic1)
        
        img_MemberPic2.translatesAutoresizingMaskIntoConstraints = false
        img_MemberPic2.image = UIImage(named: "2")
        img_MemberPic2.contentMode = .scaleAspectFill
        img_MemberPic2.layer.cornerRadius = 15
        img_MemberPic2.layer.masksToBounds = true
        layoutdict["img_MemberPic2"] = img_MemberPic2
        viewDriver_Member.addSubview(img_MemberPic2)
        
        Profile_lblMember.translatesAutoresizingMaskIntoConstraints = false
        Profile_lblMember.text = "2 Members"
        Profile_lblMember.textAlignment = .left
        Profile_lblMember.numberOfLines = 0
        Profile_lblMember.textColor = .black
        Profile_lblMember.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["Profile_lblMember"] = Profile_lblMember
        viewDriver_Member.addSubview(Profile_lblMember)
        
        
        
        viewDriver_Confirm.translatesAutoresizingMaskIntoConstraints = false
        viewDriver_Confirm.layer.cornerRadius = 20
        viewDriver_Confirm.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        viewDriver_Confirm.backgroundColor = .white
        layoutdict["viewDriver_Confirm"] = viewDriver_Confirm
        viewDriver_Loc.addSubview(viewDriver_Confirm)
        
        stackviewDriver_loc.translatesAutoresizingMaskIntoConstraints = false
        stackviewDriver_loc.axis = .vertical
        stackviewDriver_loc.alignment = .fill
        stackviewDriver_loc.distribution = .fillEqually
        stackviewDriver_loc.spacing = 5
        stackviewDriver_loc.backgroundColor = .white
        layoutdict["stackviewDriver_loc"] = stackviewDriver_loc
        viewDriver_Confirm.addSubview(stackviewDriver_loc)

        
        Driver_lblKMandTime.translatesAutoresizingMaskIntoConstraints = false
        Driver_lblKMandTime.text = "1.6 km. 12min"
        Driver_lblKMandTime.textAlignment = .center
        Driver_lblKMandTime.numberOfLines = 0
        Driver_lblKMandTime.textColor = .black
        Driver_lblKMandTime.backgroundColor = .white
        Driver_lblKMandTime.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["Driver_lblKMandTime"] = Driver_lblKMandTime
        stackviewDriver_loc.addArrangedSubview(Driver_lblKMandTime)
        
        btnConfirm.translatesAutoresizingMaskIntoConstraints = false
        btnConfirm.backgroundColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
        btnConfirm.layer.cornerRadius = 30
        btnConfirm.setTitle("Confirm", for: .normal)
        btnConfirm.setTitleColor(.white, for: .normal)
        btnConfirm.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutdict["btnConfirm"] = btnConfirm
        stackviewDriver_loc.addArrangedSubview(btnConfirm)
        
        btnReject.translatesAutoresizingMaskIntoConstraints = false
        btnReject.backgroundColor = UIColor(red: 214/255.0, green: 214/255.0, blue: 214/255.0, alpha: 2)
        btnReject.layer.cornerRadius = 30
        btnReject.setTitle("Reject", for: .normal)
        btnReject.setTitleColor(.white, for: .normal)
        btnReject.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutdict["btnReject"] = btnReject
        stackviewDriver_loc.addArrangedSubview(btnReject)
        
        
        
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewDriver_SingleSection(90)]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDriver_SingleSection]|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewDriver_Loc]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDriver_Loc]|", options: [], metrics: nil, views: layoutdict))
        

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
        
        
        
        viewDriver_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view_Loc(50)][viewDriver_Profile(90)]-1-[viewDriver_Member(50)]-1-[viewDriver_Confirm]|", options: [], metrics: nil, views: layoutdict))
        viewDriver_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view_Loc]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDriver_Profile]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDriver_Member]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDriver_Confirm]|", options: [], metrics: nil, views: layoutdict))
        
        
        //location img and label
        img_LocPic.heightAnchor.constraint(equalToConstant: 20).isActive = true
        img_LocPic.centerYAnchor.constraint(equalTo: view_Loc.centerYAnchor, constant: 0).isActive = true
        view_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[img_LocPic(20)]-20-[lblDriver_Location]-10-|", options: [], metrics: nil, views: layoutdict))
        
        
        view_Loc.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblDriver_Location]|", options: [], metrics: nil, views: layoutdict))
        
        // Driver Profile after enlarged
        img_ProfilePic.heightAnchor.constraint(equalToConstant: 60).isActive = true
        img_ProfilePic.centerYAnchor.constraint(equalTo: viewDriver_Profile.centerYAnchor, constant: 0).isActive = true
        viewDriver_Profile.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[img_ProfilePic(60)]", options: [], metrics: nil, views: layoutdict))


        viewDriver_Profile.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[view_Profilelbl]-20-|", options: [], metrics: nil, views: layoutdict))

        viewDriver_Profile.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[viewProfile_KM]-10-|", options: [], metrics: nil, views: layoutdict))

        viewDriver_Profile.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[img_ProfilePic(60)]-15-[view_Profilelbl][viewProfile_KM(70)]-10-|", options: [], metrics: nil, views: layoutdict))

        view_Profilelbl.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[Profile_lblTitle]-5-[Profile_lblLocation]|", options: [], metrics: nil, views: layoutdict))
        view_Profilelbl.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[Profile_lblTitle]|", options: [], metrics: nil, views: layoutdict))
        view_Profilelbl.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[Profile_lblLocation]|", options: [], metrics: nil, views: layoutdict))

        viewProfile_KM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[Profile_lblKM]|", options: [], metrics: nil, views: layoutdict))
        viewProfile_KM.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[Profile_lblKM]|", options: [], metrics: nil, views: layoutdict))
        
        
        //driver Memeber
        
        img_MemberPic1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        img_MemberPic1.centerYAnchor.constraint(equalTo: viewDriver_Member.centerYAnchor, constant: 0).isActive = true
        viewDriver_Member.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[img_MemberPic1(30)]", options: [], metrics: nil, views: layoutdict))
        
        img_MemberPic2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        img_MemberPic2.centerYAnchor.constraint(equalTo: viewDriver_Member.centerYAnchor, constant: 0).isActive = true
        viewDriver_Member.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-45-[img_MemberPic2(30)]-10-[Profile_lblMember]|", options: [], metrics: nil, views: layoutdict))
        
        viewDriver_Member.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[Profile_lblMember]|", options: [], metrics: nil, views: layoutdict))
        
        //Driver confirm
        
        viewDriver_Confirm.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[stackviewDriver_loc]-20-|", options: [], metrics: nil, views: layoutdict))
        viewDriver_Confirm.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[stackviewDriver_loc]-20-|", options: [], metrics: nil, views: layoutdict))
    }

}
    
