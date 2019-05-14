//
//  UIViewController+Extension.swift
//  BucketList
//
//  Created by Rose Maina on 10/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import Foundation
import UIKit

//extension UIViewController : StoryboardIdentifier { }
//
//protocol StoryboardIdentifier {
//    static var identifier: String { get }
//}
//
//extension StoryboardIdentifier where Self: UIViewController {
//    static var identifier: String {
//        return String(describing: self)
//    }
//}
//
//extension UIStoryboard {
//
//    /// The uniform place where we state all the storyboard we have in our application
//    enum Storyboard: String {
//        case Main
//        case SignIn
//        case SignUp
//        case ChangePassword
//        case BucketList
//    }
//
//    static func viewController<T>(T: UIViewController.Type) -> T where T: StoryboardIdentifier {
//        let storyboard = UIStoryboard(name: T.identifier, bundle: nil)
//
//        guard let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T
//            else { fatalError("Could not instantiate initial storyboard with name: \(T.identifier)") }
//
//        return viewController
//    }
//}

protocol StoryboardIdentifier: class {
    static var storyboardName: String { get }
}

extension StoryboardIdentifier where Self: UIViewController {
    static var storyboardName: String {
        return String(describing: self)
    }
    
//    static func storyboardViewController() -> Self {
//        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
//
//        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
//            fatalError("Could not instantiate initial storyboard with name: \(storyboardName)")
//        }
//
//        return vc
//    }
    
    static func storyboardViewController<T: UIViewController>() -> T {
                let storyboard = UIStoryboard(name: T.storyboardName, bundle: nil)
        
                guard let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T
                    else { fatalError("Could not instantiate initial storyboard with name: \(T.storyboardName)") }
        
                return viewController
    }
}

extension UIViewController: StoryboardIdentifier { }
