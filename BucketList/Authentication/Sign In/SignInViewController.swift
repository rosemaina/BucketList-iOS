//
//  SignInViewController.swift
//  BucketList
//
//  Created by Rose Maina on 08/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInButton.layer.cornerRadius = 8
    }
    
    @IBAction func backToOnboarding(_ sender: Any) {
        // takes you back to the last page of onboarding
    }
    
    @IBAction func clickToSignIn(_ sender: Any) {
        // verify text is the same as the userdefaults
        
        // go to main view
        let bucketVc = BucketListViewController.instantiate(fromAppStoryboard: .BucketList)
        present(bucketVc, animated: true, completion: nil)
    }
    
    @IBAction func clickToSignUp(_ sender: Any) {
        // segue yo sign up screen
        let signUp = SignUpViewController.instantiate(fromAppStoryboard: .SignUp)
        present(signUp, animated: true, completion: nil)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        // send a new password link to your email
        
        // link redirects you to change password screen
        let passwordVc = ChangePaswordViewController.instantiate(fromAppStoryboard: .ChangePassword)
        present(passwordVc, animated: true, completion: nil)
    }
}
