//
//  AddToCartDelegate.swift
//  NplusApplication3
//
//  Created by MAC PRO on 31/05/24.
//

import Foundation
import UIKit

protocol AddToCartDelegate: AnyObject {
    func didAddToCart(name: String?, brand: String?, imgURL: String?, price: Double?, count: Int?)
}
