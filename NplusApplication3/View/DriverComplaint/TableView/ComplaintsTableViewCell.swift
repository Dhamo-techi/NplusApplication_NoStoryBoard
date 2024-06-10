//
//  ComplaintsTableViewCell.swift
//  NplusApplication3
//
//  Created by MAC PRO on 10/06/24.
//

import UIKit

class ComplaintsTableViewCell: UITableViewCell, UITextViewDelegate {

    var layoutdict = [String : Any]()
    
    var viewContent = UIView()
        
    var viewDetails_pageCount = UIView()

    var lblCount = UILabel()

    var lblDetails = UILabel()
    
    var viewAnswer = UIView()

    var lblAnswer = UILabel()
    
    var viewTxtFldAnswer = UIView()

    var txtvwAnswer = UITextView()
    
    var placeholderLabel = UILabel()

    let viewAll = UIImage(named: "downword")

    var btnNext = UIButton()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        
        
        viewDetails_pageCount.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewDetails_pageCount"] = viewDetails_pageCount
        viewContent.addSubview(viewDetails_pageCount)
        
        lblCount.translatesAutoresizingMaskIntoConstraints = false
        lblCount.text = "02"
        lblCount.textAlignment = .center
        lblCount.textColor = UIColor(red: 25/255.0, green: 188/255.0, blue: 155/255.0, alpha: 2)
        lblCount.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        layoutdict["lblCount"] = lblCount
        viewDetails_pageCount.addSubview(lblCount)
        
        
        lblDetails.translatesAutoresizingMaskIntoConstraints = false
        lblDetails.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elt, sed do elusmod temper incididunt ut labore et dolare magna aliqua?"
        lblDetails.textAlignment = .left
        lblDetails.numberOfLines = 0
        lblDetails.textColor = .black
        lblDetails.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        layoutdict["lblDetails"] = lblDetails
        viewDetails_pageCount.addSubview(lblDetails)
        
        
        viewAnswer.translatesAutoresizingMaskIntoConstraints = false
        layoutdict["viewAnswer"] = viewAnswer
        viewContent.addSubview(viewAnswer)
        
        lblAnswer.translatesAutoresizingMaskIntoConstraints = false
        lblAnswer.text = "Answer"
        lblAnswer.textAlignment = .center
        lblAnswer.numberOfLines = 0
        lblAnswer.textColor = .black
        lblAnswer.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        layoutdict["lblAnswer"] = lblAnswer
        viewAnswer.addSubview(lblAnswer)
        
        viewTxtFldAnswer.translatesAutoresizingMaskIntoConstraints = false
        viewTxtFldAnswer.backgroundColor = .lightGray
        layoutdict["viewTxtFldAnswer"] = viewTxtFldAnswer
        viewAnswer.addSubview(viewTxtFldAnswer)
        
        txtvwAnswer.translatesAutoresizingMaskIntoConstraints = false
        txtvwAnswer.font = UIFont.systemFont(ofSize: 17)
        txtvwAnswer.textAlignment = .left
        txtvwAnswer.backgroundColor = .none
        layoutdict["txtvwAnswer"] = txtvwAnswer
        viewTxtFldAnswer.addSubview(txtvwAnswer)
        
        placeholderLabel.text = "Enter text"
        placeholderLabel.font = UIFont.systemFont(ofSize: 17)
        placeholderLabel.sizeToFit()
        placeholderLabel.frame.origin = CGPoint(x: 5, y: txtvwAnswer.font!.pointSize / 2)
        placeholderLabel.textColor = .black
        placeholderLabel.isHidden = !txtvwAnswer.text.isEmpty
        txtvwAnswer.addSubview(placeholderLabel)
        txtvwAnswer.delegate = self
        
        
        btnNext.translatesAutoresizingMaskIntoConstraints = false
        btnNext.setImage(viewAll, for: .normal)
        btnNext.backgroundColor = .clear
        btnNext.tintColor = .black
        btnNext.layer.cornerRadius = 12
        layoutdict["btnNext"] = btnNext
        viewAnswer.addSubview(btnNext)
        
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[viewContent]|", options: [], metrics: nil, views: layoutdict))
        
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-60-[viewDetails_pageCount]-60-[viewAnswer]-80-|", options: [], metrics: nil, views: layoutdict))
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewDetails_pageCount]|", options: [], metrics: nil, views: layoutdict))
        
        viewDetails_pageCount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[lblCount]-20-[lblDetails]|", options: [], metrics: nil, views: layoutdict))
        viewDetails_pageCount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblCount]-10-|", options: [], metrics: nil, views: layoutdict))
        viewDetails_pageCount.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[lblDetails]-20-|", options: [], metrics: nil, views: layoutdict))
        
        viewContent.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[viewAnswer]|", options: [], metrics: nil, views: layoutdict))
        
        viewAnswer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-40-[lblAnswer]-30-[viewTxtFldAnswer][btnNext(60)]|", options: [], metrics: nil, views: layoutdict))
        viewAnswer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[lblAnswer]-10-|", options: [], metrics: nil, views: layoutdict))
        viewAnswer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[viewTxtFldAnswer]-10-|", options: [], metrics: nil, views: layoutdict))
        viewAnswer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[btnNext]-10-|", options: [], metrics: nil, views: layoutdict))
        
        viewTxtFldAnswer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[txtvwAnswer]|", options: [], metrics: nil, views: layoutdict))
        viewTxtFldAnswer.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[txtvwAnswer]|", options: [], metrics: nil, views: layoutdict))
        
    }
    
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            placeholderLabel.isHidden = true
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            placeholderLabel.isHidden = false
        }
    }
    
}
