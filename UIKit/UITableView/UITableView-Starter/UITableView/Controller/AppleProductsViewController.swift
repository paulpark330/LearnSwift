//
//  AppleProductsViewController.swift
//  UITableView
//
//  Created by Hannie Kim on 9/10/21.
//

import UIKit

class AppleProductsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    enum SectionType: Int, CaseIterable {
        case mac, iphone, ipad
    }
    
    
    // MARK: - Class Properties
    
    private let appleProducts = AppleProducts()
    
    // MARK: - UI Propertoes
    
    private var contentView: ContentView!
    private var tableView: UITableView!
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        contentView = ContentView()
        
        view = contentView
        
        tableView = contentView.tableView
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            let mac = appleProducts.macs[indexPath.row]
            print("Selected a \(mac.name) that costs \(mac.price)")
        case 1:
            let iPhone = appleProducts.iPhones[indexPath.row]
            print("Selected a \(iPhone.name) that costs \(iPhone.price)")
        case 2:
            let iPad = appleProducts.iPads[indexPath.row]
            print("Selected a \(iPad.name) that costs \(iPad.price)")
        default:
            return
        }
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ProductTableHeaderView") as? ProductTableHeaderView else {
            return nil
        }
        
        switch section {
        case 0:
            headerView.configure(headerTitle: "Macs")
        case 1:
            headerView.configure(headerTitle: "iPhones")
        case 2:
            headerView.configure(headerTitle: "iPads")
        default:
            return nil
        }
        
        return headerView
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SectionType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch SectionType(rawValue: section) {
        case .mac:
            return appleProducts.macs.count
        case .iphone:
            return appleProducts.iPhones.count
        case .ipad:
            return appleProducts.iPads.count
        case .none:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductDetailTableViewCell", for: indexPath) as? ProductDetailTableViewCell else {
            return UITableViewCell()
        }
        
        var product: ProductDetail?
        
        switch SectionType(rawValue: indexPath.section) {
        case .mac:
            product = appleProducts.macs[indexPath.row]
        case .iphone:
            product = appleProducts.iPhones[indexPath.row]
        case .ipad:
            product = appleProducts.iPads[indexPath.row]
        default:
            return UITableViewCell()
        }
        
        if let product = product {
            cell.update(itemTitle: product.name, itemPrice: product.price)
        }
        
        return cell
    }
    
    
}

