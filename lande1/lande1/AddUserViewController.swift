//
//  AddUserViewController.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit

class AddUserViewController: UIViewController {

    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AddUser(_ sender: AnyObject) {

        
        let firstNameText: String = firstNameTF.text!
        let lastNameText: String = lastNameTF.text!
        let phoneNumberText: String = phoneNumberTF.text!
        let emailText: String = emailTF.text!
        
        //this is creating a contact object
        let user = Contact(firstName:firstNameText, lastName:lastNameText, phoneNumber:phoneNumberText, email:emailText)

        //printing out the contact object
        print("Contact: \(user)")
        
        
        
        
        
        navigationController?.popViewController(animated: false)
    }
    
}


