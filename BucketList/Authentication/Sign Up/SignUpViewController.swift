//
//  SignUpViewController.swift
//  BucketList
//
//  Created by Rose Maina on 08/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.layer.cornerRadius = 8
    }
    
    @IBAction func clickToSignIn(_ sender: Any) {
        // segue to sign In page
        let storyBoard = UIStoryboard(name: "SignIn", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SignInViewController")
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func clickToSignUp(_ sender: Any) {
        //takes email and password
        
        // store fields in the userDefaults
        
        //segue to main view
        let sb = UIStoryboard.init(name: "BucketList", bundle: nil)
        let nav = sb.instantiateInitialViewController()
        self.present(nav!, animated: false, completion: nil)
    }
}
