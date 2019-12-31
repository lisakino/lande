//
//  AddUserViewController.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Firebase

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
        
        //database stuff

        let collection = Firestore.firestore().collection("users")
        let users = Contact(firstName:emailText, lastName:firstNameText, phoneNumber:lastNameText, email:phoneNumberText)
        
        collection.addDocument(data:users.dictionary)
        
        navigationController?.popViewController(animated: false)
    }
    
}


