//
//  CreatePasswordViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

protocol CreatePasswordViewModelType {
    func completePasswordCreation()
    
}

class CreatePasswordViewModel: CreatePasswordViewModelType {
    
    var coordinator = CreatePasswordCoordinator.init(navigationController: BaseNavigationController.init())
    
    func completePasswordCreation() {
        coordinator.completePasswordCreation()
    }
}
