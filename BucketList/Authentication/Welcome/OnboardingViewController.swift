//
//  OnboardingViewController.swift
//  BucketList
//
//  Created by Rose Maina on 06/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    struct ConstantConstraints {
        static let StartLeadingCheckMark1Constraint: CGFloat = -30.0
        static let StartLeadingCheckMark2Constraint: CGFloat = -30.0
        static let StartLeadingCheckMark3Constraint: CGFloat = -30.0
        
        static let EndLeadingCheckMark1Constraint: CGFloat = 113.0
        static let EndLeadingCheckMark2Constraint: CGFloat = 113.0
        static let EndLeadingCheckMark3Constraint: CGFloat = 113.0
    }
    
    @IBOutlet weak var checkListLabel: UILabel!
    @IBOutlet weak var checkMarkView1: UIImageView!
    @IBOutlet weak var checkMarkView2: UIImageView!
    @IBOutlet weak var checkMarkView3: UIImageView!
    
    @IBOutlet weak var whiteLine1ImageView: UIImageView!
    @IBOutlet weak var whiteLine2ImageView: UIImageView!
    @IBOutlet weak var whiteLine3ImageView: UIImageView!
    
    @IBOutlet weak var leadingCheckMark1Constraint: NSLayoutConstraint!
    @IBOutlet weak var leadingCheckMark2Constraint: NSLayoutConstraint!
    @IBOutlet weak var leadingCheckMark3Constraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateCheckMarkListViews()
    }
}

extension OnboardingViewController {
    
    func setupViews() {
        leadingCheckMark1Constraint.constant = ConstantConstraints.StartLeadingCheckMark1Constraint
        leadingCheckMark2Constraint.constant = ConstantConstraints.StartLeadingCheckMark2Constraint
        leadingCheckMark3Constraint.constant = ConstantConstraints.StartLeadingCheckMark3Constraint
        
        // set the lines to invisible
        self.whiteLine1ImageView.fadeOutAnimation()
        self.whiteLine2ImageView.fadeOutAnimation()
        self.whiteLine3ImageView.fadeOutAnimation()
        
    }
    
    func animateCheckMarkListViews () {
        UIView.animate(withDuration: 1.0,
                       delay: 0.0,
                       options: .curveEaseOut,
                       animations: {
                        self.leadingCheckMark1Constraint.constant = ConstantConstraints.EndLeadingCheckMark1Constraint
                        self.view.layoutIfNeeded()
                        
        },
                       completion: { (Bool) in
                        self.whiteLine1ImageView.fadeInAnimation()
                        self.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 1.0,
                       delay: 0.4,
                       options: .curveEaseOut,
                       animations: {
                        self.leadingCheckMark2Constraint.constant = ConstantConstraints.EndLeadingCheckMark2Constraint
                        self.view.layoutIfNeeded()
                        
        },
                       completion: { (Bool) in
                        self.whiteLine2ImageView.fadeInAnimation()
                        self.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 1.0,
                       delay: 0.8,
                       options: .curveEaseOut,
                       animations: {
                        self.leadingCheckMark3Constraint.constant = ConstantConstraints.EndLeadingCheckMark3Constraint
                        self.view.layoutIfNeeded()
                        
        },
                       completion: { (Bool) in
                        self.whiteLine3ImageView.fadeInAnimation()
                        self.view.layoutIfNeeded()
        })
    }
}
