//
//  PasswordResetViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

protocol PasswordResetViewModelType {
    func finishPasswordReset()
}

class PasswordResetViewModel: PasswordResetViewModelType {
    
    var coordinator = PasswordResetCoordinator(navigationController: BaseNavigationController.init())
    
    func finishPasswordReset() {
        coordinator.finishPasswordReset()
    }

}
