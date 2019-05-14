//
//  ContinueViewController.swift
//  BucketList
//
//  Created by Rose Maina on 06/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class ContinueViewController: UIViewController {
    
    @IBOutlet weak var beBraveLabel: UILabel!
    @IBOutlet weak var takeRisksLabel: UILabel!
    @IBOutlet weak var nothingLabel: UILabel!
    @IBOutlet weak var substituteLabel: UILabel!
    @IBOutlet weak var experienceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setInvisibleLabels()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateLabels()
    }
    
    func setInvisibleLabels() {
        self.beBraveLabel.fadeOutAnimation()
        self.takeRisksLabel.fadeOutAnimation()
        self.nothingLabel.fadeOutAnimation()
        self.substituteLabel.fadeOutAnimation()
        self.experienceLabel.fadeOutAnimation()
    }
    
    func animateLabels() {
        self.beBraveLabel.fadeInAnimation(1.0, 0.0)
        self.takeRisksLabel.fadeInAnimation(1, 0.5)
        self.nothingLabel.fadeInAnimation(1, 1.0)
        self.substituteLabel.fadeInAnimation(1, 1.5)
        self.experienceLabel.fadeInAnimation(1, 2.0)
        
    }
    
    @IBAction func continueToAuth(_ sender: Any) {
        let signInVc = SignInViewController.instantiate(fromAppStoryboard: .SignIn)
        present(signInVc, animated: true, completion: nil)
    }
}
