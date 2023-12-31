//
//  PasswordResetViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

class PasswordResetViewController: BaseViewController {
    
    fileprivate let passwordResetViewModel: PasswordResetViewModelType
    fileprivate let passwordResetView = PasswordResetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addTargets() {
        passwordResetView.nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        passwordResetView.passwordTextField.addTarget(self, action: #selector(passwordValidation), for: .editingChanged)
        passwordResetView.againPasswordTextField.addTarget(self, action: #selector(passwordValidation), for: .editingChanged)
    }
    
    @objc fileprivate func passwordValidation() {
        if passwordResetView.passwordTextField.hasUpperCaseLetters(){
            passwordResetView.bigLetterLabel.textColor = blue
            passwordResetView.firstElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            passwordResetView.bigLetterLabel.textColor = gray
            passwordResetView.firstElipseImageView.image = UIImage(named: "ellipse")
        }
        
        if passwordResetView.passwordTextField.hasNumbers() {
            passwordResetView.numberLabel.textColor = blue
            passwordResetView.secondElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            passwordResetView.numberLabel.textColor = gray
            passwordResetView.secondElipseImageView.image = UIImage(named: "ellipse")
        }
        
        if passwordResetView.passwordTextField.hasSpecialSymbols() {
            passwordResetView.specialLabel.textColor = blue
            passwordResetView.thirdElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            passwordResetView.specialLabel.textColor = gray
            passwordResetView.thirdElipseImageView.image = UIImage(named: "ellipse")
        }
        
        if passwordResetView.passwordTextField.isPassword() && passwordResetView.againPasswordTextField.isPassword() && passwordResetView.passwordTextField.text == passwordResetView.againPasswordTextField.text {
            passwordResetView.nextButton.customProceedEnabledButtonSetup(string: passwordResetView.nextButton.currentTitle ?? "")
            passwordResetView.matchLabel.textColor = blue
            passwordResetView.forthElipseImageView.image = UIImage(named: "blueEllipse")
        } else {
            passwordResetView.nextButton.customProceedDisabledButtonSetup(string: passwordResetView.nextButton.currentTitle ?? "")
            passwordResetView.matchLabel.textColor = gray
            passwordResetView.forthElipseImageView.image = UIImage(named: "ellipse")
        }
    }
    
    @objc fileprivate func handleNext() {
        passwordResetViewModel.finishPasswordReset()
    }
        
    override func textFieldDelegate() {
        passwordResetView.passwordTextField.delegate = self
        passwordResetView.againPasswordTextField.delegate = self
    }
    
    override func setupViews() {
        view.addSubview(passwordResetView)
    }
    
    override func setupConstraints() {
        passwordResetView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(passwordResetViewModel: PasswordResetViewModelType) {
        self.passwordResetViewModel = passwordResetViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
