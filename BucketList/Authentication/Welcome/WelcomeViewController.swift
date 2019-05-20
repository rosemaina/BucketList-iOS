//
//  WelcomeViewController.swift
//  BucketList
//
//  Created by Rose Maina on 05/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var splashImageView: UIImageView!
    @IBOutlet weak var splashLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSwipeGesture()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateView()
    }
    
    @IBAction func mainview(_ sender: Any) {
        let sb = UIStoryboard.init(name: "BucketList", bundle: nil)
        let nav = sb.instantiateInitialViewController()
        self.present(nav!, animated: false, completion: nil)
    }
    
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .right {
            print("right swipe made --will segue to next screen")
        }
    }
    
    func setupSwipeGesture() {
        let rightRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeUp(_:)))
        rightRecognizer.direction = .right
        self.view.addGestureRecognizer(rightRecognizer)
    }
    
    
    func setupViews() {
        centerView.layer.cornerRadius = centerView.frame.size.width/2
        centerView.clipsToBounds = true
        self.splashImageView.transform = CGAffineTransform(scaleX: 2, y: 2)
    }
    
    func animateView() {
        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       options: .curveEaseOut,
                       animations: {
                        self.splashImageView.transform = CGAffineTransform.identity
                        self.view.layer.layoutIfNeeded()
        },
                       completion: nil)
    }
}
