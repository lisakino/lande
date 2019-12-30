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


    
    @IBOutlet weak var itemNameField: UITextField!
    @IBOutlet weak var totalCostField: UITextField!
    
    @IBAction func saveTotalAmount(_ sender: AnyObject) {
        let saveItemName: String = itemNameField.text!
        let totalAmount: String = totalCostField.text!

        let collection = Firestore.firestore().collection("items")
        let item = Item(itemName:saveItemName, cost:totalAmount, status: "pending", recipient:"lisa", payer:"ella")
        
        collection.addDocument(data:item.dictionary) 
        
        navigationController?.popViewController(animated: false)
    }
}

