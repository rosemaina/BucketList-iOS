//
//  DesignableView.swift
//  BucketList
//
//  Created by Rose Maina on 14/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class DesignableView: UIView {
        
    @IBInspectable
    var cornerRadius: CGFloat = 2.0
    
    @IBInspectable
    var borderWidth: CGFloat = 1.0
    
    @IBInspectable
    var borderColor: UIColor = .clear
    
    @IBInspectable
    var masksToBound: Bool = true
    
    @IBInspectable
    var shadowColor: UIColor = .lightGray
    
    @IBInspectable
    var shadowOffset: CGSize = CGSize(width: 0, height: 2.0)
    
    @IBInspectable
    var shadowRadius: CGFloat = 2.0
    
    @IBInspectable
    var shadowOpacity: CGFloat = 1.0
    
    @IBInspectable
    var masksToBounds: Bool = false
}
