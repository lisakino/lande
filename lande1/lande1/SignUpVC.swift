//
//  SignUpVC.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var retypePassword: UITextField!
    
    @IBAction func signUpAction(_ sender: Any) {
        if password.text != retypePassword.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (authDataResult: AuthDataResult?, error) in
                if error == nil {
                    let collection = Firestore.firestore().collection("users")
                    let uuid = Auth.auth().currentUser!.uid
                    print("THIS IS THE UID", uuid)
                    let firstNameText: String = self.firstName.text!
                    let lastNameText: String = self.lastName.text!
                    let phoneNumberText: String = self.phoneNumber.text!
                    let emailText: String = self.email.text!
                    
                    let users = Contact(firstName:firstNameText, lastName:lastNameText, phoneNumber:phoneNumberText, email:emailText)
                    collection.document(uuid).setData(users.dictionary)
                    //self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
        navigationController?.popViewController(animated: false)
        
    }
    
}
