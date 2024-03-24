//
//  ModuleTabBarBuilder.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 7/02/24.
//

import Foundation
import UIKit

protocol ModuleBuilder {
    func buildModule() -> UIViewController?
}

class ModuleTabBarBuilder: ModuleBuilder {
    
    func buildModule() -> UIViewController? {
        let tabBarController = UITabBarController.init()
        let modules: [ModuleBuilder] = [AnnouncementsBuilder(), DailySurveyBuilder()]
        
        let viewControllers = modules.map { (module) -> UIViewController in
            return module.buildModule()!
        }
        configureTabBar(tabBar: tabBarController, viewControllers: viewControllers)
        
        return tabBarController
    }
    
    func configureTabBar(tabBar: UITabBarController, viewControllers: [UIViewController]) {
        tabBar.viewControllers = viewControllers
        tabBar.modalPresentationStyle = .fullScreen
        tabBar.tabBar.barTintColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
    }
    
    
}
