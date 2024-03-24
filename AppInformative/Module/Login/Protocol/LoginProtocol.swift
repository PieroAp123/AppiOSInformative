//
//  LoginProtocol.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 7/02/24.
//

import Foundation
import UIKit

protocol LoginViewPresenterProtocol: AnyObject {
    var interactor: LoginInteractorProtocol? {get set}
    var view: LoginViewProtocol? {get set}
    var router: LoginRouterProtocol? {get set}

    func goToHome(_ viewController: LoginViewController)
    func setUpVisualComponents(loginView: UIView, credentialsView: UIView,
                               rutTextField: UITextField, loginButton: UIButton)
}

protocol LoginInteractorProtocol: AnyObject {
    var presenter: LoginPresenterProtocol? {get set}

    func getLinks()
    func doSignIn(username: String, class: String)
}

protocol LoginPresenterProtocol: AnyObject {
    //func didLogin(isLogin: LoginResponse)
    //func didGetLinks(links: HSELinksResponse)
    func fail(message: String)
}

protocol LoginViewProtocol: AnyObject {
    func showUser(user: String)
    func showFailMessage(message: String)
    func didReceiveLinks()
    func showProgressWaiting()
    func hideProgressWaiting()
}

protocol LoginRouterProtocol: AnyObject {
    func createModule() -> UIViewController
    func presenterHomeScreen(_ viewController: LoginViewController)
}
