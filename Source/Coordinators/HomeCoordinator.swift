//
//  HomeCoordinator.swift
//  DelegateAndNavigation
//
//  Created by Leonardo Almeida on 23/06/22.
//

import UIKit

class HomeCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        
        viewController.onPush = {
            self.showSecondary()
        }
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showSecondary() {
        let viewController = SecondaryViewController()
        
        viewController.onPop = {
            self.popToRoot()
        }
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func popToRoot() {
        navigationController.popToRootViewController(animated: true)
    }
}
