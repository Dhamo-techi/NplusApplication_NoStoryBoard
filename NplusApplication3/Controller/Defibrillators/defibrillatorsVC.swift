//
//  defibrillatorsVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 04/06/24.
//

import UIKit

class defibrillatorsVC: UIViewController {

    var defibrillatorView = defibrillatorsView()
    
    var isExpanded = false
    let defaultHeight: CGFloat = 120
    
    var collectionViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addTarget()
        
    }
    
    func setupViews(){
        defibrillatorView.setupView(base: view)
        defibrillatorView.tableViewNewdefibrillators.showsVerticalScrollIndicator = false
//        defibrillatorView.tableViewNewdefibrillators.isScrollEnabled = false
        defibrillatorView.tableViewNewdefibrillators.delegate = self
        defibrillatorView.tableViewNewdefibrillators.dataSource = self
        defibrillatorView.tableViewNewdefibrillators.register(DefibrillatorsTableViewCell.self, forCellReuseIdentifier: "DefibrillatorsTableViewCell")
        
        defibrillatorView.tableViewTotaldefibrillators.delegate = self
        defibrillatorView.tableViewTotaldefibrillators.dataSource = self
        defibrillatorView.tableViewTotaldefibrillators.register(AllDefibrillatorsTableViewCell.self, forCellReuseIdentifier: "AllDefibrillatorsTableViewCell")
    }
    
    func addTarget(){
        
        defibrillatorView.btnViewAllCities.addTarget(self, action: #selector(btnAllCitiesTapped(_:)), for: .touchUpInside)
        
        defibrillatorView.btnViewAllNewdefibrillators.addTarget(self, action: #selector(btnViewAllNewdefibrillatorsTapped(_:)), for: .touchUpInside)

    }
    
    @objc func btnAllCitiesTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        print("tapped")
    }
    
    @objc func btnViewAllNewdefibrillatorsTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        isExpanded.toggle()
        
        if isExpanded {
            let numberOfRows = defibrillatorView.tableViewNewdefibrillators.numberOfSections
            let rowHeight: CGFloat = 120
            let newHeight = CGFloat(numberOfRows) * rowHeight
            defibrillatorView.tableViewNewdefibrillatorsHeightConstraint.constant = newHeight
            defibrillatorView.tableViewNewdefibrillators.isHidden = false
            defibrillatorView.viewNewdefibrillators_SingleSection.isHidden = true
            defibrillatorView.viewA.isHidden = true
            defibrillatorView.viewB.isHidden = true

        } else {
            defibrillatorView.tableViewNewdefibrillatorsHeightConstraint.constant = defaultHeight
            defibrillatorView.tableViewNewdefibrillators.isHidden = true
            defibrillatorView.viewNewdefibrillators_SingleSection.isHidden = false
            defibrillatorView.viewA.isHidden = false
            defibrillatorView.viewB.isHidden = false
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

extension defibrillatorsVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == defibrillatorView.tableViewNewdefibrillators{
            return 3
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == defibrillatorView.tableViewNewdefibrillators{
            return 1
        }else{
            return 112
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == defibrillatorView.tableViewNewdefibrillators{
            let cell = tableView.dequeueReusableCell(withIdentifier: "DefibrillatorsTableViewCell", for: indexPath) as! DefibrillatorsTableViewCell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AllDefibrillatorsTableViewCell", for: indexPath) as! AllDefibrillatorsTableViewCell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if tableView == defibrillatorView.tableViewNewdefibrillators{
            let headerView = UIView()
            headerView.backgroundColor = .none
            return headerView
        }else{

        }
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       
        if tableView == defibrillatorView.tableViewNewdefibrillators{
            return 10
        }else{

        }
        return CGFloat()
    }
}
