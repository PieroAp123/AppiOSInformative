//
//  AnnouncementsBuilder.swift
//  AppInformative
//
//  Created by Piero Jhoann Acevedo Pichen on 7/02/24.
//

import Foundation
import UIKit

class AnnouncementsBuilder: ModuleBuilder {
    func buildModule() -> UIViewController? {
        let announcementsViewController = AnnouncementsViewController()
        let view        = announcementsViewController
        return UINavigationController.init(rootViewController: view)
    }
    
}
