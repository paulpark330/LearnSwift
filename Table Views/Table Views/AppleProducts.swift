//
//  AppleProducts.swift
//  Table Views
//
//  Created by Paul Park on 11/1/22.
//

import Foundation

class AppleProducts {
    let products: [ProductDetail] = [
        IPhone(name: "iPhone 14", price: 799),
        IPhone(name: "iPhone 14 Mini", price: 699),
        IPhone(name: "iPhone 14 Pro", price: 999),
        IPhone(name: "iPhone 14 Pro Max", price: 1099),
        Mac(name: "Mac Mini", price: 699),
        Mac(name: "Macbook Pro", price: 1299),
        Mac(name: "Mackbook Air", price: 999),
        IPad(name: "iPad", price: 329),
        IPad(name: "iPad Pro", price: 799),
        IPad(name: "iPad Air", price: 599)
    ]
}

protocol ProductDetail {
    var name: String { get }
    var price: Int { get }
}

class IPhone: ProductDetail {
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

class Mac: ProductDetail {
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

class IPad: ProductDetail {
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}
