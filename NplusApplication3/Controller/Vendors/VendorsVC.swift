//
//  VendorsVC.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import UIKit

class VendorsVC: UIViewController, AddToCartDelegate {
    
    
    
    var product: [Products] = []
        
    var vendorView = VendorsView()
    
    var vendorDummyData = [String]()
    
    var passid = Int()
    
    var Cartproducts: [CartProduct] = []

    var passCartProducts = [Any]()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationController?.isNavigationBarHidden = true
        setupview()
        
        addtarget()
        
    }
    
    func setupview(){
        vendorView.setupViews(Base: view)
        
        vendorView.tblViewVendors.delegate = self
        vendorView.tblViewVendors.dataSource = self

        vendorView.tblViewVendors.register(VendorTableViewCell.self, forCellReuseIdentifier: "VendorTableViewCell")
        ProductAPI()
    }
    
    func addtarget(){
        
        vendorView.btnMenu.addTarget(self, action: #selector(btnMenuTapped(_:)), for: .touchUpInside)
        
        vendorView.btnViewCart.addTarget(self, action: #selector(viewCartTapped(_:)), for: .touchUpInside)
    }
    
    @objc func btnMenuTapped(_ sender: UIButton){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func viewCartTapped(_ sender: UIButton){
        let vc = CartVC()
        self.passCartProducts = self.Cartproducts
        
        vc.recieveCartProduct = self.Cartproducts
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func ProductAPI()  {
        ProductViewModel().getdata(geturl: "https://dummyjson.com/products") { (result) in
            switch result{
            case.success(let data):
                self.product = data?.products ?? []
                DispatchQueue.main.async {
                    self.vendorView.tblViewVendors.reloadData()
                }
            case.failure(let err as NSError):
                print(err.localizedDescription)
            }
        }
    }
    
    func didAddToCart(name: String?, brand: String?, imgURL: String?, price: Double?, count: Int?) {
        let product = CartProduct(name: name, brand: brand, imgURL: imgURL, price: price, count: count)
        Cartproducts.append(product)
    }


}

extension VendorsVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VendorTableViewCell", for: indexPath) as! VendorTableViewCell
        cell.selectionStyle = .none
        cell.lblProductTitle.text = self.product[indexPath.item].title
        cell.lblProductBrand.text = self.product[indexPath.item].brand
        cell.lblProductUse.text = self.product[indexPath.item].category
        cell.lblProductDescribtion.text = self.product[indexPath.item].description
        
        let imgurl = URL(string: self.product[indexPath.item].thumbnail ?? "")
        URLSession.shared.dataTask(with: imgurl!){ mydata, myres, myerr in
            
            if let err = myerr{
                print(err.localizedDescription)
            }
            
            if let data = mydata{
                let imgdata = UIImage(data: data)
                DispatchQueue.main.async {
                    cell.imageProduct.image = imgdata
                }
            }
        }.resume()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = AddToCartVC()
        self.passid = self.product[indexPath.row].id ?? 0
        print(self.passid)
        vc.recieveId = self.passid
        vc.delegate = self
        
        vc.callBack = { [weak self] name, brand, prdImg in
            self?.vendorView.viewCart.isHidden = false
            self?.vendorView.lblProductTitle.text = name
            self?.vendorView.lblProductBrand.text = brand

            let imgurl = URL(string: prdImg)
            URLSession.shared.dataTask(with: imgurl!){ mydata, myres, myerr in

                if let err = myerr{
                    print(err.localizedDescription)
                }

                if let data = mydata{
                    let imgdata = UIImage(data: data)
                    DispatchQueue.main.async {
                        self?.vendorView.imageProduct.image = imgdata
                    }
                }
            }.resume()
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

struct CartProduct {
    var name: String?
    var brand: String?
    var imgURL: String?
    var price: Double?
    var count: Int?
}


