//
//  UICollectionCell+Extension.swift
//  BucketList
//
//  Created by Rose Maina on 10/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import Foundation

import Foundation
import UIKit

public protocol NibLoadable {
    static var reuseIdentifier: String{ get }
    static var nibName: String{ get }
}

extension NibLoadable where Self: UICollectionViewCell {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    public static var nibName: String {
        return String(describing: self)
    }
}
