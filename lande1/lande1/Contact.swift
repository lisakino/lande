//
//  Contact.swift
//  lande1
//
//  Created by Ella Hayashi on 2019-12-27.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit

class Contact: NSObject {
    
    //Properties
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String
    
    //Initializer
    init(firstName: String, lastName: String, phoneNumber: String, email: String){
        //
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.email = email
        
        super.init()
        
        
    }
    override var description: String{
        return "Name: \(firstName) \(lastName), Phone Number: \(phoneNumber), Email:\(email)"
    }
    
}
