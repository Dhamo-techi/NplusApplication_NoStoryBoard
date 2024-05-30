//
//  AddToCartVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 29/05/24.
//

import UIKit

class AddToCartVC: UIViewController {
    
    var addToCartView = AddToCartView()
    
    var recieveId = Int()
    
    var dataproduct: Products?
    
    var count: Int = 1 {
        didSet {
            addToCartView.lblCount.text = "\(count)"
            updatePrice()
        }
    }
    
    var price : Int = 0 {
        didSet {
            addToCartView.lblPrice.text = "$.\(20)"
            updatePrice()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
        setupViews()
        
        addTarget()
        
    }
    
    func setupViews(){
        addToCartView.setupViews(Base: view)
        addToCartView.lblCount.text = "\(count)"
        
        print(self.recieveId)
        
        ProductAPI(getid: recieveId)
    }
    
    func addTarget(){
        
        addToCartView.btnAdd.addTarget(self, action: #selector(prdtAddBtnTapped(_:)), for: .touchUpInside)
        addToCartView.btnMinus.addTarget(self, action: #selector(prdtMinusBtnTapped(_:)), for: .touchUpInside)
        addToCartView.btnBack.addTarget(self, action: #selector(backBtnTapped(_:)), for: .touchUpInside)
    }
    
    @objc func backBtnTapped(_ sender: UIButton) {
        print("back")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func prdtAddBtnTapped(_ sender: UIButton) {
        count += 1
    }
    
    @objc func prdtMinusBtnTapped(_ sender: UIButton) {
        if count > 1 {
            count -= 1
        }
    }
    
    func ProductAPI(getid: Int) {
        ProductViewModel().getProductDetails(geturl: "https://dummyjson.com/products/\(getid)") { (result) in
            switch result {
            
            case .success(let data):
                self.dataproduct =  data
                DispatchQueue.main.async {
                    self.addToCartView.lblProductName.text = data?.title
                    self.addToCartView.lblProductBrand.text = data?.brand
                    self.addToCartView.lblRating.text = "\(data?.rating ?? 0)"
                    self.addToCartView.lblProductDescription.text = data?.description
                    self.addToCartView.lblProductStock.text = "Only \(data?.stock ?? 0) left"
                    let imgurl = URL(string: data?.thumbnail ?? "")
                    URLSession.shared.dataTask(with: imgurl!){ mydata, myres, myerr in
                        
                        if let err = myerr{
                            print(err.localizedDescription)
                        }
                        
                        if let data = mydata{
                            let imgdata = UIImage(data: data)
                            DispatchQueue.main.async {
                                self.addToCartView.imgvwProduct.image = imgdata
                            }
                        }
                    }.resume()
                    
                    if let productPrice = data?.price {
                        self.price = Int(productPrice)
                        let initialPrice = self.price
                        self.addToCartView.lblPrice.text = "$.\(initialPrice)"
                        self.price = initialPrice
                        self.updatePrice()
                    }
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.handleError(error)
                }
            }
        }
    }
    
    func handleError(_ error: Error) {
        print("Error fetching product details: \(error.localizedDescription)")
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func updatePrice() {
        let totalPrice = count * price
        addToCartView.lblPrice.text = "$.\(totalPrice)"
    }
    
}
