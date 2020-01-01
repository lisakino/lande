//
//  ContactsViewController.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-26.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//
// resources for table view: https://github.com/codepath/ios_guides/wiki/Table-View-Guide

import UIKit
import Firebase

class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    

    let collection = Firestore.firestore().collection("users")
    
    let data = ["1","2","3"]
    
    

    @IBOutlet weak var ContactTV: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContactTV.dataSource = self
        ContactTV.estimatedRowHeight = 100
        ContactTV.rowHeight = UITableView.automaticDimension

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        
//        print(data[indexPath.row])

        let cell = ContactTV.dequeueReusableCell(withIdentifier: "ContactItem", for: indexPath) as! ContactTableViewCell
        
        
        cell.firstNameLabel.text = data[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

