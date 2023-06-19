//
//  SceneDelegate.swift
//  SevenLast
//
//  Created by Eldar Gaiypov on 14/6/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let navigationController = BaseNavigationController()
            let appCoordinator = AppCoordinator(navigationController: navigationController)
            appCoordinator.start()
            window.rootViewController = navigationController
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

