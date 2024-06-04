//
//  WalletVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 03/06/24.
//

import UIKit

class WalletVC: UIViewController {

    var walletview = walletView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addtarget()
    }
    
    func setupViews(){
        walletview.setupView(base: view)
        walletview.clcvwUpdate.delegate = self
        walletview.clcvwUpdate.dataSource = self
        walletview.clcvwUpdate.register(walletCollectionCell.self, forCellWithReuseIdentifier: "walletCollectionCell")
    }
    
    func addtarget(){
        
    }

}

extension WalletVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "walletCollectionCell", for: indexPath) as! walletCollectionCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 1.0 * 10.0) / 1.0
        return CGSize(width: width, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10.0, left: 0, bottom: 10.0, right: 0)
    }
    
}
