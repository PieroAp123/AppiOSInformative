//
//  UIView+Extensions.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 8/02/24.
//

import Foundation
import UIKit

extension UIView {
    func setBackgroundImage(name: String) {
        UIGraphicsBeginImageContext(frame.size)
        UIImage(named: name)?.draw(in: bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        backgroundColor = UIColor(patternImage: image)
    }

    func setupRoundedCorners() {
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}
