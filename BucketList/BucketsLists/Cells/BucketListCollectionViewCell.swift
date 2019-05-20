//
//  BucketListCollectionViewCell.swift
//  BucketList
//
//  Created by Rose Maina on 13/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class BucketListCollectionViewCell: UICollectionViewCell {
    
    // design the cell to display month and year -- capital letters -- white -- endless -- 200  by 200
    // it should have an overlay || opacity of less than one
    
    @IBOutlet weak var selectionImage:UIImageView!
    
    var isEditing: Bool = false {
        didSet {
            selectionImage.isHidden = !isEditing
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if isEditing {
                selectionImage.image = isSelected ? UIImage(named: "Checked") : UIImage(named: "Unchecked")
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    private func setUpView() {
        self.layer.cornerRadius = 20
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.layer.shadowRadius = 5.0
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
}
