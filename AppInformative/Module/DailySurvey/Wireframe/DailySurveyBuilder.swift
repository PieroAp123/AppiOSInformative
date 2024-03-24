//
//  DailySurveyBuilder.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 7/02/24.
//

import Foundation
import UIKit

class DailySurveyBuilder: ModuleBuilder {
    func buildModule() -> UIViewController? {
        let dailySurveyViewController = DailySurveyViewController()
        let view        = dailySurveyViewController
        return UINavigationController.init(rootViewController: view)
    }
    
    
}
