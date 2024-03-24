//
//  LoginRouter.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 7/02/24.
//

import Foundation
import UIKit

class LoginRouter: LoginRouterProtocol {
    var tabBarModuleBuilder: ModuleTabBarBuilder
    
    init() {
        self.tabBarModuleBuilder = ModuleTabBarBuilder()
    }
    
    func createModule() -> UIViewController {
        let storyBoard = UIStoryboard(name: "Login", bundle: Bundle.main)
        guard let view = storyBoard.instantiateViewController(withIdentifier: "LoginViewControllerID") as? LoginViewController
        else { fatalError("LoginViewController not found") }
        
        let presenter: LoginViewPresenterProtocol & LoginPresenterProtocol = LoginPresenter()
        let router: LoginRouterProtocol = self
        
        view.presenter = presenter
        presenter.router = router
        
        view.modalPresentationStyle = .fullScreen
        view.modalTransitionStyle = .crossDissolve
        view.definesPresentationContext = true
        return view
    }
    
    func presenterHomeScreen(_ viewController: LoginViewController) {
        let controller = self.tabBarModuleBuilder.buildModule()!
        viewController.present(controller, animated: true, completion: nil)
    }
    
}
