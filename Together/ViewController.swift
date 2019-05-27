//
//  ViewController.swift
//  Together
//
//  Created by MobileProg on 4/4/19.
//  Copyright © 2019 MobileProg. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

  

    @IBOutlet weak var rememberBtn: UIButton!
    @IBOutlet weak var forgetPassBtn: UIButton!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var firstLbl: UILabel!
    @IBAction func firstNextBtn(_ sender: UIButton) {
        self.firstLbl.text = "Ok clicked"
    }
    var clickCount = 0
    
    
    @IBAction func btnLogin(_ sender: Any) {
        let userEmail = emailTxt.text
        let userPass = passTxt.text
       
        Auth.auth().createUser(withEmail: userEmail!, password: userPass!){
            (user, error) in
            
            if error == nil {
                self.labelName.text = "You are successfully registered"
            }else{
                self.labelName.text = "Registration Failed.. Please Try Again"
            }
            
        }
        
        clickCount+=1
        labelName.text="You clicked \(clickCount) times"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()
     
    }
    
    
    
//
//
    

}

