//
//  CpmplaintVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 10/06/24.
//

import UIKit

class ComplaintVC: UIViewController {
    
    var complaintView = ComplaintView()
    
    let cell = ComplaintsTableViewCell()
    
    var pgcount = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        complaintView.tblVwComplaints.delegate = self
        complaintView.tblVwComplaints.dataSource = self
        complaintView.tblVwComplaints.isScrollEnabled = false
        complaintView.tblVwComplaints.register(ComplaintsTableViewCell.self, forCellReuseIdentifier: "ComplaintsTableViewCell")
        
        self.pgcount = [1,2,3]
        
        setupViews()
        
        addtarget()
    }
    
    
    func setupViews(){
        complaintView.setupView(base: view)
    }
    
    func addtarget(){
        
    }
    
}

extension ComplaintVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pgcount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComplaintsTableViewCell", for: indexPath) as! ComplaintsTableViewCell
        
        cell.lblCount.text = "\(self.pgcount[indexPath.row])"
        let lastCell = indexPath.row == pgcount.count - 1
        let buttonImage = UIImage(named: lastCell ? "upward" : "downword")
        cell.btnNext.setImage(buttonImage, for: .normal)
        cell.btnNext.tag = indexPath.row
        cell.btnNext.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.bounds.height
    }
    
    
    @objc func nextButtonTapped() {
        let currentPage = complaintView.pageScroller.currentPage
        let nextPage = currentPage + 1
        if nextPage < pgcount.count {
            let indexPath = IndexPath(row: nextPage, section: 0)
            complaintView.tblVwComplaints.scrollToRow(at: indexPath, at: .top, animated: true)
            complaintView.pageScroller.currentPage = nextPage
        }
        else {
            let indexPath = IndexPath(row: 0, section: 0)
            complaintView.tblVwComplaints.scrollToRow(at: indexPath, at: .top, animated: true)
            complaintView.pageScroller.currentPage = 0
        }
    }
    
}
