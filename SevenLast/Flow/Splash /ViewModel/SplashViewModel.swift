//
//  SplashViewModel.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

protocol SplashViewModelType {
    func gotoRegister()
    func gotoLogin()
}
class SplashViewModel: SplashViewModelType {
    
    var coordinator = SplashCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoRegister() {
        coordinator.gotoRegister()
    }
    
    func gotoLogin() {
        coordinator.gotoLogin()
    }
}
