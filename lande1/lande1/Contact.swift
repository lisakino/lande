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
    var name: String
    var email: String
    
    //Initializer
    init(name: String, email: String){
        //
        self.name = name
        self.email = email
        
        super.init()
        
        
    }
    override var description: String{
        return "name: \(name) contact:\(email)"
    }
    
}
