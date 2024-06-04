//
//  walletView.swift
//  NplusApplication3
//
//  Created by MAC PRO on 03/06/24.
//

import UIKit

class walletView: UIView {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
    
    var viewBack_title = UIView()
    
    var btnBack = UIButton()
    
    var lblViewTitle = UILabel()
    
    var viewNavigationTitle = UIView()
    
    var viewDetailBg = UIView()
    
    var stackviewBalance = UIStackView()
    
    var viewCoinBalance = UIView()

    var viewCoinsImg = UIView()
    
    var imgvwCoin = UIImageView()
    
    var lblBalanceCoin = UILabel()

    var lbltitleCoinBalance = UILabel()

    var viewWalletBalance = UIView()

    var viewWalletImg = UIView()
    
    var imgvwWallet = UIImageView()

    var lblBalanceWallet = UILabel()

    var lblSymbolWalletBalance = UILabel()
    
    var lbltitleWalletBalance = UILabel()
    
    var viewAmoutDeposit = UIView()
    
    var txtfldAmount = UITextField()
    
    var lblSymbolAmount = UILabel()
    
    var btndefaultAmount1 = UIButton()

    var btndefaultAmount2 = UIButton()

    var stackviewClaimOrAdd = UIStackView()

    var btnClaimCoin = UIButton()

    var btnAddamt = UIButton()
    
    var clcvwUpdate : UICollectionView!
    
    var viewDotLine = UIView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(base baseView: UIView){
    
        
        baseView.backgroundColor = UIColor(red: 212/255.0, green: 212/255.0, blue: 212/255.0, alpha: 2)
        
        viewContent.translatesAutoresizingMaskIntoConstraints = false
        viewContent.backgroundColor = .none
        layoutdict["viewContent"] = viewContent
        baseView.addSubview(viewContent)
        
        viewBack_title.translatesAutoresizingMaskIntoConstraints = false
        viewBack_title.backgroundColor = .none
        layoutdict["viewBack_title"] = viewBack_title
        viewContent.addSubview(viewBack_title)
    
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        let backImage = UIImage(named: "backArrowImage")
        btnBack.setImage(backImage, for: .normal)
        btnBack.backgroundColor = .white
        btnBack.tintColor = .black
        btnBack.layer.cornerRadius = 25
        btnBack.layer.shadowOpacity = 0.5
        btnBack.layer.shadowOffset = CGSize(width: 0, height: 2)
        btnBack.layer.shadowRadius = 3
        layoutdict["btnBack"] = btnBack
        viewBack_title.addSubview(btnBack)
        
        viewNavigationTitle.translatesAutoresizingMaskIntoConstraints = false
        viewNavigationTitle.backgroundColor = .white
        viewNavigationTitle.layer.cornerRadius = 9
        viewNavigationTitle.layer.shadowColor = UIColor.black.cgColor
        viewNavigationTitle.layer.shadowOpacity = 0.5
        viewNavigationTitle.layer.shadowOffset = CGSize(width:0, height: 2)
        viewNavigationTitle.layer.shadowRadius = 3
        layoutdict["viewNavigationTitle"] = viewNavigationTitle
        viewBack_title.addSubview(viewNavigationTitle)
    
        lblViewTitle.translatesAutoresizingMaskIntoConstraints = false
        lblViewTitle.text = "Wallet"
        lblViewTitle.textAlignment = .left
        lblViewTitle.textColor = .black
        lblViewTitle.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        layoutdict["lblViewTitle"] = lblViewTitle
        viewNavigationTitle.addSubview(lblViewTitle)
        
        viewDetailBg.translatesAutoresizingMaskIntoConstraints = false
        viewDetailBg.backgroundColor = .white
        layoutdict["viewDetailBg"] = viewDetailBg
        viewContent.addSubview(viewDetailBg)
        
        stackviewBalance.translatesAutoresizingMaskIntoConstraints = false
        stackviewBalance.axis = .horizontal
        stackviewBalance.alignment = .fill
        stackviewBalance.distribution = .fillEqually
        stackviewBalance.spacing = 5
        layoutdict["stackviewBalance"] = stackviewBalance
        viewDetailBg.addSubview(stackviewBalance)

        viewCoinBalance.translatesAutoresizingMaskIntoConstraints = false
        viewCoinBalance.backgroundColor = UIColor(red: 255/255.0, green: 193/255.0, blue: 6/255.0, alpha: 0.36)
        viewCoinBalance.layer.cornerRadius = 6
        viewCoinBalance.layer.borderWidth = 1
        viewCoinBalance.layer.borderColor = UIColor(red: 255/255.0, green: 193/255.0, blue: 6/255.0, alpha: 2).cgColor
        layoutdict["viewCoinBalance"] = viewCoinBalance
        stackviewBalance.addArrangedSubview(viewCoinBalance)
        
        viewCoinsImg.translatesAutoresizingMaskIntoConstraints = false
        viewCoinsImg.backgroundColor = .clear
        layoutdict["viewCoinsImg"] = viewCoinsImg
        viewCoinBalance.addSubview(viewCoinsImg)
        
        imgvwCoin.translatesAutoresizingMaskIntoConstraints = false
        imgvwCoin.image = UIImage(named: "coins")
        imgvwCoin.contentMode = .scaleAspectFit
        layoutdict["imgvwCoin"] = imgvwCoin
        viewCoinsImg.addSubview(imgvwCoin)
        
        lbltitleCoinBalance.translatesAutoresizingMaskIntoConstraints = false
        lbltitleCoinBalance.text = "Coin Balance"
        lbltitleCoinBalance.textAlignment = .center
        lbltitleCoinBalance.textColor = .black
        lbltitleCoinBalance.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        layoutdict["lbltitleCoinBalance"] = lbltitleCoinBalance
        viewCoinBalance.addSubview(lbltitleCoinBalance)
        
        lblBalanceCoin.translatesAutoresizingMaskIntoConstraints = false
        lblBalanceCoin.text = "689"
        lblBalanceCoin.textAlignment = .center
        lblBalanceCoin.textColor = .black
        lblBalanceCoin.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        layoutdict["lblBalanceCoin"] = lblBalanceCoin
        viewCoinsImg.addSubview(lblBalanceCoin)
    
        
        viewWalletBalance.translatesAutoresizingMaskIntoConstraints = false
        viewWalletBalance.backgroundColor = UIColor(red: 0/255.0, green: 141/255.0, blue: 57/255.0, alpha: 0.26)
        viewWalletBalance.layer.borderWidth = 1
        viewWalletBalance.layer.borderColor = UIColor(red: 0/255.0, green: 141/255.0, blue: 57/255.0, alpha: 2).cgColor
        viewWalletBalance.layer.cornerRadius = 6
        layoutdict["viewWalletBalance"] = viewWalletBalance
        stackviewBalance.addArrangedSubview(viewWalletBalance)
        
        viewWalletImg.translatesAutoresizingMaskIntoConstraints = false
        viewWalletImg.backgroundColor = .clear
        layoutdict["viewWalletImg"] = viewWalletImg
        viewWalletBalance.addSubview(viewWalletImg)
        
        imgvwWallet.translatesAutoresizingMaskIntoConstraints = false
        imgvwWallet.image = UIImage(named: "wallet")
        imgvwWallet.contentMode = .scaleAspectFit
        layoutdict["imgvwWallet"] = imgvwWallet
        viewWalletImg.addSubview(imgvwWallet)
        
        lblBalanceWallet.translatesAutoresizingMaskIntoConstraints = false
        lblBalanceWallet.text = "19805"
        lblBalanceWallet.textAlignment = .center
        lblBalanceWallet.textColor = .black
        lblBalanceWallet.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        layoutdict["lblBalanceWallet"] = lblBalanceWallet
        viewWalletImg.addSubview(lblBalanceWallet)
        
        lblSymbolWalletBalance.translatesAutoresizingMaskIntoConstraints = false
        lblSymbolWalletBalance.text = "₹"
        lblSymbolWalletBalance.textAlignment = .center
        lblSymbolWalletBalance.textColor = .black
        lblSymbolWalletBalance.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        layoutdict["lblSymbolWalletBalance"] = lblSymbolWalletBalance
        viewWalletImg.addSubview(lblSymbolWalletBalance)
        
        lbltitleWalletBalance.translatesAutoresizingMaskIntoConstraints = false
        lbltitleWalletBalance.text = "WALLET BALANCE"
        lbltitleWalletBalance.textAlignment = .center
        lbltitleWalletBalance.textColor = .black
        lbltitleWalletBalance.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        layoutdict["lbltitleWalletBalance"] = lbltitleWalletBalance
        viewWalletBalance.addSubview(lbltitleWalletBalance)
        
        viewAmoutDeposit.translatesAutoresizingMaskIntoConstraints = false
        viewAmoutDeposit.backgroundColor = .clear
        layoutdict["viewAmoutDeposit"] = viewAmoutDeposit
        viewDetailBg.addSubview(viewAmoutDeposit)
        
        lblSymbolAmount.translatesAutoresizingMaskIntoConstraints = false
        lblSymbolAmount.text = "₹"
        lblSymbolAmount.textAlignment = .center
        lblSymbolAmount.textColor = .black
        lblSymbolAmount.font = UIFont.systemFont(ofSize: 26, weight: .semibold)
        layoutdict["lblSymbolAmount"] = lblSymbolAmount
        viewAmoutDeposit.addSubview(lblSymbolAmount)
        
        txtfldAmount.translatesAutoresizingMaskIntoConstraints = false
        txtfldAmount.placeholder = "000"
        let Emailpaddingview = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 53))
        txtfldAmount.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        txtfldAmount.leftView = Emailpaddingview
        txtfldAmount.leftViewMode = .always
        txtfldAmount.layer.cornerRadius = 13
        txtfldAmount.layer.borderWidth = 2.5
        txtfldAmount.layer.borderColor = UIColor(red: 255/255.0, green: 47/255.0, blue: 156/255.0, alpha: 2).cgColor
        layoutdict["txtfldAmount"] = txtfldAmount
        viewAmoutDeposit.addSubview(txtfldAmount)
        
        
        btndefaultAmount1.translatesAutoresizingMaskIntoConstraints = false
        btndefaultAmount1.backgroundColor = .clear
        btndefaultAmount1.layer.cornerRadius = 10
        btndefaultAmount1.setTitle("1000", for: .normal)
        btndefaultAmount1.setTitleColor(.black, for: .normal)
        btndefaultAmount1.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        btndefaultAmount1.layer.borderWidth = 2.5
        btndefaultAmount1.layer.borderColor = UIColor(red: 255/255.0, green: 47/255.0, blue: 156/255.0, alpha: 2).cgColor
        layoutdict["btndefaultAmount1"] = btndefaultAmount1
        viewAmoutDeposit.addSubview(btndefaultAmount1)
        
        btndefaultAmount2.translatesAutoresizingMaskIntoConstraints = false
        btndefaultAmount2.backgroundColor = .clear
        btndefaultAmount2.layer.cornerRadius = 10
        btndefaultAmount2.setTitle("500", for: .normal)
        btndefaultAmount2.setTitleColor(.black, for: .normal)
        btndefaultAmount2.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        btndefaultAmount2.layer.borderWidth = 2.5
        btndefaultAmount2.layer.borderColor = UIColor(red: 255/255.0, green: 47/255.0, blue: 156/255.0, alpha: 2).cgColor
        layoutdict["btndefaultAmount2"] = btndefaultAmount2
        viewAmoutDeposit.addSubview(btndefaultAmount2)
        
        stackviewClaimOrAdd.translatesAutoresizingMaskIntoConstraints = false
        stackviewClaimOrAdd.axis = .horizontal
        stackviewClaimOrAdd.alignment = .fill
        stackviewClaimOrAdd.distribution = .fillEqually
        stackviewClaimOrAdd.spacing = 10
        layoutdict["stackviewClaimOrAdd"] = stackviewClaimOrAdd
        viewDetailBg.addSubview(stackviewClaimOrAdd)
        
        btnClaimCoin.translatesAutoresizingMaskIntoConstraints = false
        btnClaimCoin.backgroundColor = .clear
        btnClaimCoin.layer.cornerRadius = 10
        btnClaimCoin.setTitle("Claim Coin", for: .normal)
        btnClaimCoin.setTitleColor(.black, for: .normal)
        btnClaimCoin.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .regular)
        btnClaimCoin.layer.borderWidth = 2.5
        btnClaimCoin.layer.borderColor = UIColor(red: 255/255.0, green: 193/255.0, blue: 6/255.0, alpha: 2).cgColor
        layoutdict["btnClaimCoin"] = btnClaimCoin
        stackviewClaimOrAdd.addArrangedSubview(btnClaimCoin)
        
        btnAddamt.translatesAutoresizingMaskIntoConstraints = false
        btnAddamt.backgroundColor = .clear
        btnAddamt.layer.cornerRadius = 10
        btnAddamt.setTitle("Add", for: .normal)
        btnAddamt.setTitleColor(.black, for: .normal)
        btnAddamt.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .regular)
        btnAddamt.layer.borderWidth = 2.5
        btnAddamt.layer.borderColor = UIColor(red: 255/255.0, green: 47/255.0, blue: 156/255.0, alpha: 2).cgColor
        layoutdict["btnAddamt"] = btnAddamt
        stackviewClaimOrAdd.addArrangedSubview(btnAddamt)
        
        viewDotLine.translatesAutoresizingMaskIntoConstraints = false
        viewDotLine.backgroundColor = .lightGray
        layoutdict["viewDotLine"] = viewDotLine
        viewDetailBg.addSubview(viewDotLine)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        clcvwUpdate = UICollectionView(frame: .zero, collectionViewLayout: layout)
        clcvwUpdate.translatesAutoresizingMaskIntoConstraints = false
        clcvwUpdate.backgroundColor = .clear
        clcvwUpdate.showsVerticalScrollIndicator = false
        layoutdict["clcvwUpdate"] = clcvwUpdate
        viewDetailBg.addSubview(clcvwUpdate)
        
        //constraints
        viewContent.topAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: baseView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        baseView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
    
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewBack_title(50)]-10-[viewDetailBg]|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewBack_title]|", options: [], metrics: nil, views: layoutdict))
    
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btnBack]|", options: [], metrics: nil, views: layoutdict))
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewNavigationTitle]|", options: [], metrics: nil, views: layoutdict))
    
        viewBack_title.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[btnBack(50)]-10-[viewNavigationTitle]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewNavigationTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblViewTitle]|", options: [], metrics: nil, views: layoutdict))
        viewNavigationTitle.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblViewTitle]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDetailBg]|", options: [], metrics: nil, views: layoutdict))
        
        viewDetailBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-15-[stackviewBalance(110)]-15-[viewAmoutDeposit(60)]-20-[stackviewClaimOrAdd(60)]-10-[viewDotLine(1)]-5-[clcvwUpdate]|", options: [], metrics: nil, views: layoutdict))
        viewDetailBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[stackviewBalance]-15-|", options: [], metrics: nil, views: layoutdict))
        
        //insideStackview
        viewCoinBalance.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[viewCoinsImg]-5-[lbltitleCoinBalance(29)]-10-|", options: [], metrics: nil, views: layoutdict))
        viewCoinBalance.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewCoinsImg]-10-|", options: [], metrics: nil, views: layoutdict))
        viewCoinBalance.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lbltitleCoinBalance]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewCoinsImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgvwCoin(50)]|", options: [], metrics: nil, views: layoutdict))
        viewCoinsImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBalanceCoin]|", options: [], metrics: nil, views: layoutdict))
        viewCoinsImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[imgvwCoin(50)]-5-[lblBalanceCoin]-5-|", options: [], metrics: nil, views: layoutdict))
        
        viewWalletBalance.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[viewWalletImg]-5-[lbltitleWalletBalance(29)]-10-|", options: [], metrics: nil, views: layoutdict))
        viewWalletBalance.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewWalletImg]-10-|", options: [], metrics: nil, views: layoutdict))
        viewWalletBalance.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lbltitleWalletBalance]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewWalletImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[imgvwWallet(50)]|", options: [], metrics: nil, views: layoutdict))
        viewWalletImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblBalanceWallet]|", options: [], metrics: nil, views: layoutdict))
        viewWalletImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[lblSymbolWalletBalance(16)]", options: [], metrics: nil, views: layoutdict))
        viewWalletImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imgvwWallet(50)][lblSymbolWalletBalance(16)]", options: [], metrics: nil, views: layoutdict))
        viewWalletImg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[imgvwWallet(50)]-3-[lblBalanceWallet]-5-|", options: [], metrics: nil, views: layoutdict))
        
        //AmountDespositView
        viewDetailBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewAmoutDeposit]|", options: [], metrics: nil, views: layoutdict))
        
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblSymbolAmount]|", options: [], metrics: nil, views: layoutdict))
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-28-[lblSymbolAmount(30)]", options: [], metrics: nil, views: layoutdict))
        
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[txtfldAmount]|", options: [], metrics: nil, views: layoutdict))
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[txtfldAmount(150)]", options: [], metrics: nil, views: layoutdict))
        
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btndefaultAmount1]|", options: [], metrics: nil, views: layoutdict))
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[btndefaultAmount2]|", options: [], metrics: nil, views: layoutdict))
        viewAmoutDeposit.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[btndefaultAmount2(90)]-15-[btndefaultAmount1(110)]-15-|", options: [], metrics: nil, views: layoutdict))
        
        //ClaimorAddBtnStackview
        viewDetailBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[stackviewClaimOrAdd]-15-|", options: [], metrics: nil, views: layoutdict))
        
        //collectionviewUpdate
        viewDetailBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDotLine]|", options: [], metrics: nil, views: layoutdict))
        
        viewDetailBg.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[clcvwUpdate]-10-|", options: [], metrics: nil, views: layoutdict))
        
    }
}
