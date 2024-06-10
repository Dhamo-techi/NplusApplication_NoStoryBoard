//
//  MapVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 06/06/24.
//

import UIKit

class MapVC: UIViewController {
    
    var mapView = MapView()

    var isExpanded = false
    var expandedIndexPath: IndexPath?
    let defaultHeight: CGFloat = 95
    
    let expandedHeight: CGFloat = 400

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        setupview()
        
        addtarget()
    }
    
    func setupview(){
        
        mapView.setupView(base: view)
        
        
    }
    
    func addtarget(){
        mapView.btnExpand.addTarget(self, action: #selector(btnExpandTapped(_:)), for: .touchUpInside)
    }
    
    @objc func btnExpandTapped(_ sender: UIButton) {
        print("Tapped")
        isExpanded.toggle()
        
        if isExpanded {
            let rowHeight: CGFloat = 100
            let newHeight = 5 * rowHeight
            mapView.tableViewNewdefibrillatorsHeightConstraint.constant = newHeight
            mapView.viewDriver_SingleSection.isHidden = true
            mapView.viewA.isHidden = true
            mapView.viewB.isHidden = true
            mapView.viewDriver_ContentBase.backgroundColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5)
            mapView.tableViewNewdefibrillators.isHidden = false
            mapView.tableViewNewdefibrillators.showsVerticalScrollIndicator = false
            mapView.tableViewNewdefibrillators.delegate = self
            mapView.tableViewNewdefibrillators.dataSource = self
            mapView.tableViewNewdefibrillators.register(MapTableViewCell.self, forCellReuseIdentifier: "MapTableViewCell")
            
            
        } else {
            mapView.tableViewNewdefibrillatorsHeightConstraint.constant = defaultHeight
            mapView.tableViewNewdefibrillators.isHidden = true
            mapView.viewDriver_SingleSection.isHidden = false
            mapView.viewA.isHidden = false
            mapView.viewB.isHidden = false
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}


extension MapVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MapTableViewCell", for: indexPath) as! MapTableViewCell
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        if let expandedIndexPath = expandedIndexPath, expandedIndexPath == indexPath {
            cell.isExpanded = true
            cell.viewDriver_SingleSection.isHidden = true
            cell.viewDriver_Loc.isHidden = false
        } else {
            cell.isExpanded = false
            cell.viewDriver_SingleSection.isHidden = false
            cell.viewDriver_Loc.isHidden = true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let expandedIndexPath = expandedIndexPath, expandedIndexPath == indexPath {
            return  expandedHeight
                }
        return defaultHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        headerView.backgroundColor = .none
        return headerView
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.beginUpdates()
            if let expandedIndexPath = expandedIndexPath {
                if let cell = tableView.cellForRow(at: expandedIndexPath) as? MapTableViewCell {
                    cell.collapse()
                }
                if expandedIndexPath == indexPath {
                    self.expandedIndexPath = nil
                }
                 else {
                    self.expandedIndexPath = indexPath
                    if let cell = tableView.cellForRow(at: indexPath) as? MapTableViewCell {
                        cell.toggleExpansion()
                    }
                }
            } else {
                self.expandedIndexPath = indexPath
                mapView.tableViewNewdefibrillators.topAnchor.constraint(equalTo: mapView.viewDriver_ContentBase.topAnchor, constant: 40).isActive = true
                if let cell = tableView.cellForRow(at: indexPath) as? MapTableViewCell {
                    cell.toggleExpansion()
                }
            }
            tableView.endUpdates()
        }

}

