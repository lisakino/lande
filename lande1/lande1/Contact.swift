//
//  Contact.swift
//  lande1
//
//  Created by Ella Hayashi on 2019-12-27.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Foundation
import Firebase

struct Contact {
    
    //Properties
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String
    

    var dictionary: [String: Any]{
        return[
            "email": email,
            "firstName": firstName,
            "lastName": lastName,
            "phoneNumber": phoneNumber
        ]
    }
    
}
