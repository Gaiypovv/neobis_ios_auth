//
//  SplashView.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit
import SnapKit

class SplashView: BaseView {
    
    private let logoImageView = CustomImageView()
    private let logoLabel = CustomLabel()
    let beginButton = CustomButton(type: .system)
    let loginButton = CustomButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    internal override func setupViews() {
        addSubview(logoImageView)
        addSubview(logoLabel)
        addSubview(beginButton)
        addSubview(loginButton)
        
        logoImageView.customLogoImageViewSetup()
        logoLabel.customLogoLabel()
        beginButton.customProceedEnabledButtonSetup(string: "Начать пользоваться")
        loginButton.customBottomButtonSetup(string: "Есть аккаунт? Войти")
    }
    
    internal override func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 154))
            make.width.equalTo(flexibleWidth(to: 200))
            make.height.equalTo(flexibleHeight(to: 200))
            make.centerX.equalToSuperview()
        }
        
        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -20))
        }
        
        beginButton.snp.makeConstraints { make in
            make.top.equalTo(logoLabel.snp.bottom).offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -20))
            make.height.equalTo(flexibleHeight(to: 65))
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(beginButton.snp.bottom).offset(flexibleHeight(to: 41))
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
