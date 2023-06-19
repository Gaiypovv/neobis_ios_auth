//
//  CreatePasswordCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

class CreatePasswordCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let createPasswordViewModel = CreatePasswordViewModel.init()
        createPasswordViewModel.coordinator = self
        let createPasswordViewController = CreatePasswordViewController(createPasswordViewModel: createPasswordViewModel)
        navigationController.pushViewController(createPasswordViewController, animated: true)
    }
    
    func completePasswordCreation() {
        
    }
}
