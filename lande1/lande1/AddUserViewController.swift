//
//  AddUserViewController.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class AddUserViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AddUser(_ sender: AnyObject) {
        
        let emailText: String = emailTF.text!
        
        //database stuff

        let collection = Firestore.firestore().collection("users")

        // Create a query against the collection.
        collection.whereField("email", isEqualTo: emailText)
            .getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        print("\(document.documentID) => \(document.data())")
                        let addNewUser = document.documentID
                         let uuid = Auth.auth().currentUser!.uid
                        
                        let collection = Firestore.firestore().collection("relationships")
                        let ship = Relationship(userA:uuid, userB:addNewUser)
                           
                        collection.addDocument(data:ship.dictionary)
                        print("SUCCESS")
                    }
                }
        }
        
        navigationController?.popViewController(animated: false)
    }
    
}


