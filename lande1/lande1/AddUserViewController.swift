//
//  AddUserViewController.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit

class AddUserViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AddUser(_ sender: AnyObject) {

        
        let nametext: String = nameText.text!
        let emailtext: String = emailText.text!
        
        //this is creating a contact object
        let user = ContactObjects(name:nametext, email:emailtext)

        //printing out the contact object
        print("contact: \(user)")
        
        navigationController?.popViewController(animated: false)
    }
    
}


