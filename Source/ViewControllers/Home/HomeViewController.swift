//
//  HomeViewController.swift
//  DelegateAndNavigation
//
//  Created by Leonardo Almeida on 23/06/22.
//

import UIKit

class HomeViewController: UIViewController {
    var onPush: (() -> Void)?
    
    lazy var homeView: HomeView = {
        let view = HomeView()
        view.backgroundColor = .white
        
        view.onPush = {
            self.onPush?()
        }
        
        return view
    }()
    
    override func loadView() {
        view = homeView
        title = "Home Controller"
    }
}
