//
//  UIView+Extension.swift
//  BucketList
//
//  Created by Rose Maina on 07/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    ///
    /// Adjusting a UIView’s alpha value from 0.0 to 1.0 (Opaque)
    ///
    func fadeInAnimation(_ duration: TimeInterval = 1.0, _ delay: TimeInterval = 0.0) {
        
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: .curveEaseIn,
                       animations: {
                        self.alpha = 1.0 // Instead of a specific instance of, say, birdTypeLabel, we simply set [thisInstance] (ie, self)'s alpha
        },
                       completion: nil)  }
    
    ///
    /// Adjusting a UIView’s alpha value from 1.0 to 0.0 (Invisible)
    ///
    func fadeOutAnimation(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0) {
        
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: .curveEaseIn,
                       animations: {
                        self.alpha = 0.0
        },
                       completion: nil)
    }
}
