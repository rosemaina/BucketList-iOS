//
//  ChangePaswordViewController.swift
//  BucketList
//
//  Created by Rose Maina on 08/05/2019.
//  Copyright © 2019 rose maina. All rights reserved.
//

import UIKit

class ChangePaswordViewController: UIViewController {

    @IBOutlet weak var oldPasswordTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var confirmNewPasswordTexField: UITextField!
    @IBOutlet weak var changePasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changePasswordButton.layer.cornerRadius = 8
        
    // if forgotPasswordButton pressed
        // -- update constraints
        // -- hide old password label and text field
    // else show page exactly as is

    }
    
    @IBAction func clickToGoBack(_ sender: Any) {
        
    }
    
    @IBAction func changePassword(_ sender: Any) {
        // change passsword
        
        // go to the main view of the app
        let sb = UIStoryboard.init(name: "BucketList", bundle: nil)
        let nav = sb.instantiateInitialViewController()
        self.present(nav!, animated: false, completion: nil)
    }
}
