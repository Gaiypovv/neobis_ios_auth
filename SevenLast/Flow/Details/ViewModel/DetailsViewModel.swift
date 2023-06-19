//
//  DetailsViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

protocol DetailsViewModelType {
    func gotoCreatePassword()
    
}

class DetailsViewModel: DetailsViewModelType {
    
    var coordinator = DetailsCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoCreatePassword() {
        coordinator.gotoCreatePassword()
    }
}
