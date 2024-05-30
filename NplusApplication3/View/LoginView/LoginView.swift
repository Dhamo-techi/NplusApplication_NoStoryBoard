//
//  LoginView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 27/05/24.
//

import UIKit

class LoginView: UIView {

    var contentView = UIView()
    
    var viewLoginContainer = UIView()
        
    var lblLogin = UILabel()
    
    var layoutDict = [String : Any]()
    
    var txtfldStackview = UIStackView()
    
    var txtEmail = UITextField()

    var txtPassword = UITextField()
    
    var viewRemember = UIView()
    
    var btnCheckedbox = UIButton()
    
    var lblRememberMe = UILabel()
    
    var btnForgotpswd = UIButton()
    
    var btnLogin = UIButton()
    
    var btnSignupWith = UIButton()
    
    var stackviewContinueBtn = UIStackView()
    
    var viewContinue = UIView()
    
    var btnFbContinue = UIButton()
    
    var imgFb = UIImageView()
    
    var btnTwitterContinue = UIButton()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupview(base BaseView: UIView) {
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .white
        layoutDict["contentView"] = contentView
        BaseView.addSubview(contentView)
        
        viewLoginContainer.translatesAutoresizingMaskIntoConstraints = false
        viewLoginContainer.backgroundColor = .none
        layoutDict["viewLoginContainer"] = viewLoginContainer
        contentView.addSubview(viewLoginContainer)
        
        lblLogin.translatesAutoresizingMaskIntoConstraints = false
        lblLogin.text = "Login"
        lblLogin.textAlignment = .center
        lblLogin.textColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
        lblLogin.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        layoutDict["lblLogin"] = lblLogin
        viewLoginContainer.addSubview(lblLogin)
        
        txtfldStackview.translatesAutoresizingMaskIntoConstraints = false
        txtfldStackview.axis = .vertical
        txtfldStackview.alignment = .fill
        txtfldStackview.distribution = .fillEqually
        txtfldStackview.spacing = 30
        layoutDict["txtfldStackview"] = txtfldStackview
        viewLoginContainer.addSubview(txtfldStackview)
        
        txtEmail.translatesAutoresizingMaskIntoConstraints = false
        txtEmail.placeholder = "Email"
        let Emailpaddingview = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 53))
        txtEmail.leftView = Emailpaddingview
        txtEmail.leftViewMode = .always
        txtEmail.layer.cornerRadius = 30
        txtEmail.layer.borderWidth = 1
        txtEmail.layer.borderColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2).cgColor
        txtfldStackview.addArrangedSubview(txtEmail)
        
        txtPassword.translatesAutoresizingMaskIntoConstraints = false
        txtPassword.placeholder = "Password"
        let Passwordpaddingview = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 53))
        txtPassword.leftView = Passwordpaddingview
        txtPassword.leftViewMode = .always
        txtPassword.layer.cornerRadius = 30
        txtPassword.layer.borderWidth = 1
        txtPassword.layer.borderColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2).cgColor
        txtfldStackview.addArrangedSubview(txtPassword)
        
        viewRemember.translatesAutoresizingMaskIntoConstraints = false
        viewRemember.backgroundColor = .none
        layoutDict["viewRemember"] = viewRemember
        viewLoginContainer.addSubview(viewRemember)
        
        btnCheckedbox.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 13.0, *) {
            if let checkedImage = UIImage(systemName: "checkmark.square.fill"),
               let uncheckedImage = UIImage(systemName : "square"){
                btnCheckedbox.setImage(checkedImage, for: .selected)
                btnCheckedbox.setImage(uncheckedImage, for: .normal)
                btnCheckedbox.tintColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
                btnCheckedbox.isSelected = false
            }
        } else {
            let checkedImage = UIImage(named: "checkmark.square.fill")
            let uncheckedImage = UIImage(named : "square")
            btnCheckedbox.setImage(checkedImage, for: .selected)
            btnCheckedbox.setImage(uncheckedImage, for: .normal)
            btnCheckedbox.isSelected = false
        }
        layoutDict["btnCheckedbox"] = btnCheckedbox
        viewRemember.addSubview(btnCheckedbox)
        
        lblRememberMe.translatesAutoresizingMaskIntoConstraints = false
        lblRememberMe.text = "Remeber Me"
        lblRememberMe.textAlignment = .left
        lblRememberMe.textColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
        lblRememberMe.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutDict["lblRememberMe"] = lblRememberMe
        viewRemember.addSubview(lblRememberMe)
        
        btnForgotpswd.translatesAutoresizingMaskIntoConstraints = false
        btnForgotpswd.setTitle("Forgot Password", for: .normal)
        btnForgotpswd.setTitleColor(.red, for: .normal)
        btnForgotpswd.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layoutDict["btnForgotpswd"] = btnForgotpswd
        viewRemember.addSubview(btnForgotpswd)
        
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        btnLogin.backgroundColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
        btnLogin.layer.cornerRadius = 10
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.setTitleColor(.white, for: .normal)
        btnLogin.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        layoutDict["btnLogin"] = btnLogin
        viewLoginContainer.addSubview(btnLogin)
        
        btnSignupWith.translatesAutoresizingMaskIntoConstraints = false
        btnSignupWith.setTitle("Or Sign Up With", for: .normal)
        btnSignupWith.setTitleColor(.black, for: .normal)
        btnSignupWith.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .semibold)
        layoutDict["btnSignupWith"] = btnSignupWith
        viewLoginContainer.addSubview(btnSignupWith)
        
        stackviewContinueBtn.translatesAutoresizingMaskIntoConstraints = false
        stackviewContinueBtn.axis = .horizontal
        stackviewContinueBtn.alignment = .fill
        stackviewContinueBtn.distribution = .fillEqually
        stackviewContinueBtn.spacing = 30
        layoutDict["stackviewContinueBtn"] = stackviewContinueBtn
        viewLoginContainer.addSubview(stackviewContinueBtn)
        
//        viewFbContinue.translatesAutoresizingMaskIntoConstraints = false
//        viewFbContinue.backgroundColor = UIColor(red: 59/255.0, green: 89/255.0, blue: 153/255.0, alpha: 2)
//        layoutDict["viewFbContinue"] = viewFbContinue
//        stackviewContinueBtn.addArrangedSubview(viewFbContinue)
//
//
//        imgFb.translatesAutoresizingMaskIntoConstraints = false
//        imgFb.image = UIImage(named: "fb")
//        layoutDict["imgFb"] = imgFb
//        viewFbContinue.addSubview(imgFb)
        
        btnFbContinue.translatesAutoresizingMaskIntoConstraints = false
        btnFbContinue.setTitle("Continue", for: .normal)
        btnFbContinue.setTitleColor(.white, for: .normal)
        btnFbContinue.titleEdgeInsets = UIEdgeInsets(top: 0, left: -17, bottom: 0, right: 0)
        let Fbimage = UIImage(named: "fb")
        btnFbContinue.setImage(Fbimage, for: .normal)
        btnFbContinue.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 130)
        btnFbContinue.layer.cornerRadius = 10
        btnFbContinue.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        btnFbContinue.isSelected = false
        btnFbContinue.backgroundColor = UIColor(red: 59/255.0, green: 89/255.0, blue: 153/255.0, alpha: 2)
        layoutDict["btnFbContinue"] = btnFbContinue
        stackviewContinueBtn.addArrangedSubview(btnFbContinue)
        
        btnTwitterContinue.translatesAutoresizingMaskIntoConstraints = false
        btnTwitterContinue.setTitle("Continue", for: .normal)
        btnTwitterContinue.setTitleColor(.white, for: .normal)
        btnTwitterContinue.titleEdgeInsets = UIEdgeInsets(top: 0, left: -14, bottom: 0, right: 0)
        let Twitterimage = UIImage(named: "Twitter")
        btnTwitterContinue.setImage(Twitterimage, for: .normal)
        btnTwitterContinue.imageEdgeInsets = UIEdgeInsets(top: 13, left: 10, bottom: 13, right: 130)
        btnTwitterContinue.layer.cornerRadius = 10
        btnTwitterContinue.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        btnTwitterContinue.isSelected = false
        btnTwitterContinue.backgroundColor = UIColor(red: 71/255.0, green: 169/255.0, blue: 232/255.0, alpha: 2)
        layoutDict["btnTwitterContinue"] = btnTwitterContinue
        stackviewContinueBtn.addArrangedSubview(btnTwitterContinue)

        
        BaseView.backgroundColor = .white
        BaseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[contentView]|", options: [], metrics: nil, views: layoutDict))
        contentView.topAnchor.constraint(equalTo: BaseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: BaseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true

        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewLoginContainer]|", options: [], metrics: nil, views: layoutDict))
        viewLoginContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor,constant: 0).isActive = true


        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblLogin(30)]-60-[txtfldStackview]-10-[viewRemember(30)]-30-[btnLogin(55)]-30-[btnSignupWith]-30-[stackviewContinueBtn]|", options: [], metrics: nil, views: layoutDict))
        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[lblLogin]|", options: [], metrics: nil, views: layoutDict))
        lblLogin.centerXAnchor.constraint(equalTo: viewLoginContainer.centerXAnchor).isActive = true
        
        
        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[txtfldStackview]-30-|", options: [], metrics: nil, views: layoutDict))
        
        txtEmail.heightAnchor.constraint(equalToConstant: 55).isActive = true
        txtPassword.heightAnchor.constraint(equalToConstant: 55).isActive = true

        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[viewRemember]-30-|", options: [], metrics: nil, views: layoutDict))
        viewRemember.centerXAnchor.constraint(equalTo: viewLoginContainer.centerXAnchor).isActive = true

        viewRemember.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnCheckedbox]|", options: [], metrics: nil, views: layoutDict))
        viewRemember.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblRememberMe]|", options: [], metrics: nil, views: layoutDict))
        viewRemember.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnForgotpswd]|", options: [], metrics: nil, views: layoutDict))
        viewRemember.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btnCheckedbox(30)]-5-[lblRememberMe][btnForgotpswd]-0-|", options: [], metrics: nil, views: layoutDict))
        
        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[btnLogin]-30-|", options: [], metrics: nil, views: layoutDict))
        
        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[btnSignupWith]-30-|", options: [], metrics: nil, views: layoutDict))
        
        viewLoginContainer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[stackviewContinueBtn]-30-|", options: [], metrics: nil, views: layoutDict))
        
        btnFbContinue.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btnTwitterContinue.heightAnchor.constraint(equalToConstant: 50).isActive = true


        
        
    
    }
}
