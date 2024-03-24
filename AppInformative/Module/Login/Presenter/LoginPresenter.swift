//
//  LoginPresenter.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 7/02/24.
//

import Foundation
import UIKit

class LoginPresenter: LoginViewPresenterProtocol {
    var interactor: LoginInteractorProtocol?
    weak var view: LoginViewProtocol?
    var router: LoginRouterProtocol?
    
    func goToHome(_ viewController: LoginViewController) {
        self.router?.presenterHomeScreen(viewController)
    }
    
    func setUpVisualComponents(loginView: UIView, credentialsView: UIView,
                               rutTextField: UITextField, loginButton: UIButton) {
        loginView.setBackgroundImage(name: "login_background")
        credentialsView.backgroundColor = UIColor.init(named: "background_color")?.withAlphaComponent(0.8)
        //credentialsView.setupRoundedCorners()
        //rutTextField.setUpInitialTextField()
        //loginButton.setupRoundedCorners(cornerRadius: 60)
        loginButton.backgroundColor = UIColor.init(named: "appOrange")
    }
    
    
}

extension LoginPresenter: LoginPresenterProtocol {
    func fail(message: String) {
        self.view?.showFailMessage(message: message)
    }
    
    
}
