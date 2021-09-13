//
//  HomeViewController.swift
//  Delegation
//
//  Created by Hannie Kim on 9/11/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - UI Properties
    
    var contentView: HomeView!    
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        
        contentView = HomeView(buttonAction: { [weak self] in
            self?.presentViewController()
        })
        
        view = contentView
    }
    
    func presentViewController() {
        
        // Present OrderFoodVC as a modal
        present(OrderFoodViewController(orderFood: { [weak self] foodItem in
            self?.order(food: foodItem)
        }), animated: true, completion: nil)
    }        
    
    func order(food: String) {
        
        // Dismiss OrderFoodVC modal that gets presented as a modal
        dismiss(animated: true, completion: nil)
        
        // Display an alert controller
        let alertController = UIAlertController(title: "Order Processing", message: "Beginning to make your \(food)", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

