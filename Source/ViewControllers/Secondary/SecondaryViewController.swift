//
//  SecondaryViewController.swift
//  DelegateAndNavigation
//
//  Created by Leonardo Almeida on 23/06/22.
//

import UIKit

class SecondaryViewController: UIViewController {
    var onPop: (() -> Void)?
    
    lazy var secondaryView: SecondaryView = {
        let view = SecondaryView()
        view.backgroundColor = .white
        return view
    }()
    
    override func loadView() {
        self.view = secondaryView
        configNavigationBar()
    }
    
    private func configNavigationBar() {
        
        let rightButtonItem = UIBarButtonItem(title: "Dismiss", style: .done, target: self, action: #selector(self.onHandlerPop))
        self.navigationItem.rightBarButtonItem  = rightButtonItem
        
    }
    
    @objc
    private func onHandlerPop() {
        self.onPop?()
    }
}
