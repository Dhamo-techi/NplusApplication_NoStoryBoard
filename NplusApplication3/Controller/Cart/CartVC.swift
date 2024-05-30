//
//  CartVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 30/05/24.
//

import UIKit

class CartVC: UIViewController {

    var cartview = CartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden  = true
        setupViews()
        
        addtargets()
    }
    
    func setupViews(){
        cartview.setupView(base: view)
        cartview.clcvwCart.delegate = self
        cartview.clcvwCart.dataSource = self
        cartview.clcvwCart.register(CartCollectionViewCell.self, forCellWithReuseIdentifier: "CartCollectionViewCell")
    }
    
    func addtargets(){
        
    }
}

extension CartVC : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CartCollectionViewCell", for: indexPath) as! CartCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 1.0 * 10.0) / 1.0
        return CGSize(width: width, height: 180.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
}
