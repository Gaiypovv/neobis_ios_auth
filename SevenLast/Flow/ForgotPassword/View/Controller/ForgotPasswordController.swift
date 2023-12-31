//
//  ForgotPasswordController.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

class ForgotPasswordController: BaseViewController {
    
    fileprivate let forgotPasswordViewModel: ForgotPasswordViewModelType
    fileprivate let forgotPasswordView = ForgotPasswordView()
    fileprivate let sentEmailView = SentEmailAllertView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addTargets() {
        forgotPasswordView.nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        forgotPasswordView.backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        forgotPasswordView.mailTextField.addTarget(self, action: #selector(mailValidation), for: .editingChanged)
        sentEmailView.closeButton.addTarget(self, action: #selector(handleClose), for: .touchUpInside)
    }
    
    @objc fileprivate func mailValidation() {
        if forgotPasswordView.mailTextField.isEmail() {
            forgotPasswordView.nextButton.customProceedEnabledButtonSetup(string: forgotPasswordView.nextButton.currentTitle ?? "")
        } else {
            forgotPasswordView.nextButton.customProceedDisabledButtonSetup(string: forgotPasswordView.nextButton.currentTitle ?? "")
        }
    }
    
    @objc fileprivate func handleClose() {
        view.subviews.forEach { subView in
            if subView != forgotPasswordView {
                subView.removeFromSuperview()
            }
        }
        forgotPasswordViewModel.gotoPasswordReset()
    }
    
    @objc fileprivate func handleNext() {
        forgotPasswordViewModel.completePasswordRecovery()
        
        view.applyBlurEffect()
        sentEmailView.infoLabel.customInfoLabel(string: forgotPasswordView.mailTextField.text ?? "")
        view.addSubview(sentEmailView)
        sentEmailView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 343))
            make.height.equalTo(flexibleHeight(to: 343))
        }
    }
    
    @objc fileprivate func handleBack() {
        forgotPasswordViewModel.goBack()
    }
    
    override func textFieldDelegate() {
        forgotPasswordView.mailTextField.delegate = self
    }
    
    override func setupViews() {
        view.addSubview(forgotPasswordView)
    }
    
    override func setupConstraints() {
        forgotPasswordView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(forgotPasswordViewModel: ForgotPasswordViewModelType) {
        self.forgotPasswordViewModel = forgotPasswordViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
