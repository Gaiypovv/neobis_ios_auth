//
//  ForgotPasswordViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

protocol ForgotPasswordViewModelType {
    func goBack()
    func completePasswordRecovery()
    func gotoPasswordReset()
}

class ForgotPasswordViewModel: ForgotPasswordViewModelType {

    var coordinator = ForgotPasswordCoordinator(navigationController: BaseNavigationController.init())
    
    func goBack() {
        coordinator.goBack()
    }
    
    func completePasswordRecovery() {
        coordinator.completePasswordRecovery()
    }
    
    func gotoPasswordReset() {
        coordinator.gotoPasswordReset()
    }
    
}
