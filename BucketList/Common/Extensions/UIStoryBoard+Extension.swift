//
//  UIStoryBoard+Extension.swift
//  BucketList
//
//  Created by Rose Maina on 12/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    class var storyboardID: String {
        return "\(self)"
    }
    
    public static func instantiate(fromAppStoryboard appStoryboard: AppStoryboard, withIdentifier identifier: String? = nil) -> Self {
        return appStoryboard.viewController(viewControllerClass: self, identifier: identifier)
    }
}

public enum AppStoryboard: String {
    case Main
    case SignIn
    case SignUp
    case ChangePassword
    case BucketList
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>(viewControllerClass: T.Type, identifier: String? = nil) -> T {
        let storyboardId = identifier ?? (viewControllerClass as UIViewController.Type).storyboardID
        
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardId) as? T else {
            fatalError("Viewcontroller with ID \(storyboardId), not found in \(self.rawValue) Storyboard")
        }
        
        return scene
    }
}
