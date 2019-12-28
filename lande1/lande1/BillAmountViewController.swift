//
//  BillAmountViewController.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Firebase

class BillAmountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var totalAmountField: UITextField!
    //var docRef: DocumentReference!
    
    @IBAction func saveTotalAmount(_ sender: Any) {
        guard let totalAmount = totalAmountField.text, !totalAmount.isEmpty else { return }
//        let saveCost: [String: Any] = ["cost": totalAmount]
//        docRef: Firestore.firestore().collection("items").document("cost")
    }
    
}

