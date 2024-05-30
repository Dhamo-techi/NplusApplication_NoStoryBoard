//
//  ViewModel.swift
//  NplusApplication3
//
//  Created by MAC PRO on 28/05/24.
//

import Foundation

class ProductViewModel : NSObject{
    override init() {
        super.init()
    }
    func getdata(geturl: String, result: @escaping(Result<ProductModel?,Error>)-> Void) {
        if let url = URL(string: geturl){
            print(url)
            networkManager.shared.fetchData(from: url, completion: result)
        }
    }
    
    func getProductDetails(geturl: String, result: @escaping(Result<Products?,Error>)-> Void) {
        if let url = URL(string: geturl){
            print(url)
            networkManager.shared.fetchData(from: url, completion: result)
        }
    }
}
