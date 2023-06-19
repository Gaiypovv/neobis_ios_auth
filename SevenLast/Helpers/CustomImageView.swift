//
//  CustomImageView.swift
//  Neobis_iOS_Auth
//
//  Created by Eldar Gaiypov on 2023/6/10.
//

import UIKit

class CustomImageView: UIImageView {
    
    func customLogoImageViewSetup() {
        self.image = UIImage(named: "smile")
    }
    
    func customEllipseImageViewSetup() {
        self.image = UIImage(named: "ellipse")
    }
    
    func customBellImageViewSetup() {
        self.image = UIImage(named: "bell")
    }
}
