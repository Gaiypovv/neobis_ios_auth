//
//  SplashViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {
    
    private let splashViewModel: SplashViewModelType
    private let splashView = SplashView()
    
    init(splashViewModel: SplashViewModelType) {
        self.splashViewModel = splashViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupActions()
    }
    
    private func setupViews() {
        view.addSubview(splashView)
        splashView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupActions() {
        splashView.beginButton.addTarget(self, action: #selector(handleBegin), for: .touchUpInside)
        splashView.loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
    }
    
    @objc private func handleBegin() {
        splashViewModel.gotoRegister()
    }
    
    @objc private func handleLogin() {
        splashViewModel.gotoLogin()
    }
}
