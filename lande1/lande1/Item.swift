//
//  Item.swift
//  lande1
//
//  Created by Ella Hayashi on 2019-12-27.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Foundation
import Firebase

struct Item {
    
    //Properties
    var itemName: String
    var cost: String
    var status: String
    var recipient: String
    var payer: String
    

    var dictionary: [String: Any]{
        return[
            "itemName": itemName,
            "cost": cost,
            "status": status,
            "recipient": recipient,
            "payer": payer
        ]
    }
    
}
