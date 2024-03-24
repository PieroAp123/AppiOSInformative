//
//  LoginViewController.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 5/02/24.
//

import UIKit

class LoginViewController: ParentViewController {
    
    @IBOutlet var loginView: UIView!
    @IBOutlet weak var credentialsView: UIView!
    @IBOutlet weak var correoLabel: UILabel!
    @IBOutlet weak var correoTextField: UITextField!
    @IBOutlet weak var passwordTextFieldOverlay: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var numberOfCharactersInTextField = 0
    var presenter: LoginViewPresenterProtocol?
    var username: String?
    var hasAcceptedConditions: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.presenter?.getLinks()
        self.presenter?.setUpVisualComponents(
            loginView: loginView, credentialsView: credentialsView,
            rutTextField: correoTextField, loginButton: loginButton)
        
    }
    @IBAction func actioLoginButton(_ sender: Any) {
        self.presenter?.goToHome(self)
        print("login")
        loginButton.backgroundColor = UIColor.init(named: "appOrange")
        loginButton.setTitleColor(UIColor.white, for: .normal)
    }
}

// MARK: - LoginViewProtocol
extension LoginViewController: LoginViewProtocol {
    func showUser(user: String) {
        self.correoTextField.text = ""
        self.passwordTextField.text = ""
        self.numberOfCharactersInTextField = 0
        self.presenter?.goToHome(self)
    }
    
    func showFailMessage(message: String) {
        print("Links Retrieved")
        print("")
        print("")
        print("")
        self.showUser(user: "")
    }
    
    func didReceiveLinks() {
        print(String(format: "%@: %@", "error", "message"))
    }
    
    func showProgressWaiting() {
        print("show loading..")
    }
    
    func hideProgressWaiting() {
        print("dismiss loading..")
    }
    
    
}
