//
//  ForgotPasswordCoordinator.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

class ForgotPasswordCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let forgotPasswordViewModel = ForgotPasswordViewModel.init()
        forgotPasswordViewModel.coordinator = self
        let forgotPasswordController = ForgotPasswordController(forgotPasswordViewModel: forgotPasswordViewModel)
        navigationController.pushViewController(forgotPasswordController, animated: true)
    }
    
    func goBack() {
        navigationController.popViewController(animated: true)
    }
    
    func completePasswordRecovery() {
        
    }
    
    func gotoPasswordReset() {
        let passwordResetCoordinator = PasswordResetCoordinator(navigationController: navigationController)
        passwordResetCoordinator.start()
    }
}
